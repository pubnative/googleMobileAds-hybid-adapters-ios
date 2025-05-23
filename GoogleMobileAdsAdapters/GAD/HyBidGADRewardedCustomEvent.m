// 
// HyBid SDK License
//
// https://github.com/pubnative/pubnative-hybid-ios-sdk/blob/main/LICENSE
//

#import "HyBidGADRewardedCustomEvent.h"
#import "HyBidGADUtils.h"

typedef id<GADMediationRewardedAdEventDelegate> _Nullable(^HyBidGADRewardedCustomEventCompletionBlock)(_Nullable id<GADMediationRewardedAd> ad,
                                                                                                                  NSError *_Nullable error);

@interface HyBidGADRewardedCustomEvent() <HyBidRewardedAdDelegate, GADMediationRewardedAd>

@property (nonatomic, strong) HyBidRewardedAd *rewardedAd;
@property(nonatomic, weak, nullable) id<GADMediationRewardedAdEventDelegate> delegate;
@property(nonatomic, copy) HyBidGADRewardedCustomEventCompletionBlock completionBlock;

@end

@implementation HyBidGADRewardedCustomEvent

- (void)dealloc {
    self.rewardedAd = nil;
}

- (void)loadRewardedAdForAdConfiguration:(GADMediationRewardedAdConfiguration *)adConfiguration
                       completionHandler:(GADMediationRewardedLoadCompletionHandler)completionHandler {
    self.completionBlock = completionHandler;
    NSString *serverParameter = [adConfiguration.credentials.settings objectForKey:@"parameter"];
    if ([HyBidGADUtils areExtrasValid:serverParameter] && [HyBidGADUtils appToken:serverParameter] != nil) {
        if (HyBid.isInitialized && [[HyBidGADUtils appToken:serverParameter] isEqualToString:[HyBidSDKConfig sharedConfig].appToken]) {
            [self loadRewardedAdWithZoneID:[HyBidGADUtils zoneID:serverParameter]];
        } else {
            [HyBid initWithAppToken:[HyBidGADUtils appToken:serverParameter] completion:^(BOOL success) {
                [self loadRewardedAdWithZoneID:[HyBidGADUtils zoneID:serverParameter]];
            }];
        }
    } else {
        [self invokeFailWithMessage:@"Failed rewarded ad fetch. Missing required server extras."];
        return;
    }
}

- (void)loadRewardedAdWithZoneID:(NSString *)zoneID {
    self.rewardedAd = [[HyBidRewardedAd alloc] initWithZoneID:zoneID andWithDelegate:self];
    self.rewardedAd.isMediation = YES;
    [self.rewardedAd load];
}

- (void)presentFromViewController:(nonnull UIViewController *)viewController {
    if (self.rewardedAd.isReady) {
        [self.delegate willPresentFullScreenView];
        if ([self.rewardedAd respondsToSelector:@selector(showFromViewController:)]) {
            [self.rewardedAd showFromViewController:viewController];
        } else {
            [self.rewardedAd show];
        }
    } else {
        [self.delegate didFailToPresentWithError:[NSError errorWithDomain:@"Ad is not ready... Please wait." code:0 userInfo:nil]];
    }
}

- (void)invokeFailWithMessage:(NSString *)message {
    [HyBidLogger errorLogFromClass:NSStringFromClass([self class]) fromMethod:NSStringFromSelector(_cmd) withMessage:message];
    self.completionBlock(nil, [NSError errorWithDomain:message code:0 userInfo:nil]);
    [self.delegate didFailToPresentWithError:[NSError errorWithDomain:message code:0 userInfo:nil]];
}

#pragma mark - HyBidRewardedAdDelegate

- (void)onReward {
    [self.delegate didRewardUser];
}

- (void)rewardedDidLoad {
    self.delegate = self.completionBlock(self, nil);
}

- (void)rewardedDidFailWithError:(NSError *)error {
    [self invokeFailWithMessage:error.localizedDescription];
}

- (void)rewardedDidTrackClick {
    [self.delegate reportClick];
}

- (void)rewardedDidTrackImpression {
    [self.delegate reportImpression];
}

- (void)rewardedDidDismiss {
    [self.delegate willDismissFullScreenView];
    [self.delegate didDismissFullScreenView];
}

@end
