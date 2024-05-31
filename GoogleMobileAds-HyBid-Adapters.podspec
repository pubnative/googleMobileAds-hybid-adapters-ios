Pod::Spec.new do |spec|

  spec.name         = "GoogleMobileAds-HyBid-Adapters"
  spec.version      = "3.0.1.1"
  spec.summary      = "HyBid iOS SDK Adapters (Header Bidding & Mediation) for Google Mobile Ads"
  spec.description = <<-DESC
                     Supported ad formats:
                     Banner, MRect, Leaderboard, Interstitial, Rewarded, Native
                   DESC
  spec.homepage     = "https://github.com/pubnative/pubnative-hybid-ios-sdk"
  spec.license      = { :type => "MIT", :text => <<-LICENSE
    MIT License

    Copyright (c) 2024 PubNative GmbH

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
      LICENSE
    }

  spec.authors      = { "Can Soykarafakili" => "can.soykarafakili@pubnative.net", "Eros Garcia Ponte" => "eros.ponte@pubnative.net", "Fares Benhamouda" => "fares.benhamouda@pubnative.net", "Orkhan Alizada" => "orkhan.alizada@pubnative.net", "Jose Contreras" => "jose.contreras@verve.com", "Aysel Abdullayeva" => "aysel.abdullayeva@verve.com" }
  spec.platform     = :ios, '12.0'
  spec.source       = { :git => "https://github.com/pubnative/googleMobileAds-hybid-adapters-ios.git", :tag => "3.0.1.1" }

  spec.source_files = 'GoogleMobileAdsAdapters/**/*.{swift,h,m}'
  spec.static_framework = true

  spec.dependency 'HyBid', '3.0.1'
  spec.dependency 'Google-Mobile-Ads-SDK', '~> 11.0'
end
