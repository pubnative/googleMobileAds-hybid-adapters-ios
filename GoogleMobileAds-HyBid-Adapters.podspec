Pod::Spec.new do |spec|

  spec.name         = "GoogleMobileAds-HyBid-Adapters"
  spec.version      = "3.6.1.0"
  spec.summary      = "HyBid iOS SDK Adapters (Header Bidding & Mediation) for Google Mobile Ads"
  spec.description = <<-DESC
                     Supported ad formats:
                     Banner, MRect, Leaderboard, Interstitial, Rewarded, Native
                   DESC
  spec.homepage     = "https://github.com/pubnative/pubnative-hybid-ios-sdk"
  spec.license      = { :type => "HyBid SDK License", :text => <<-LICENSE
HyBid SDK License Terms ("License Terms")

These License Terms apply to the Software (as defined below) provided by Verve Group Europe
GmbH, Karl-Liebknecht-Str. 32, 10178 Berlin ("VGE"). By downloading or using the Software, you
("You" or "Licensee") agree to be bound by these License Terms. Any use of the Software, other
than as authorised under these Licence Terms, is prohibited.

Preamble

(A) VGE offers certain sell-side monetisation solutions and tools for publishers of mobile
    applications ("Services") and designed for execution on Android or Apple iOS operating
    systems owned or operated by Licensee ("Digital Properties").

(B) The Software (as defined below) is a prerequisite for making use of the Services.

(C) The Services will be rendered under a separate commercial agreement ("Commercial
    Agreement").

1. Scope

1.1 Software. These License Terms apply to the HyBid SDK software for Android or iOS
    available under the URL https://github.com/pubnative/pubnative-hybid-android-sdk,
    https://github.com/pubnative/pubnative-hybid-ios-sdk or any other URL designated by
    VGE from version 3.6.0 onward or any such other successor version of the HyBid SDK,
    including any and all programs, repositories, libraries, code, or other software
    components, whether in source code or machine-readable code, including its
    documentation as applicable, that are part of, referenced, or otherwise connected by VGE
    to the HyBid SDK (the "Software"). These License Terms apply to the Software regardless
    of the way in which it was obtained, whether by download, hard copy, e-mail, or any other
    form of transmission.

1.2 Exclusions. These License Terms do not apply to the ATOM software (current version
    available under the URL https://github.com/pubnative/ATOM) and its functionalities, and
    any other software or software component that is distributed under separate license
    terms.

2. License

2.1 Commercial License. Subject to Your compliance with these License Terms and the
    conclusion of a Commercial Agreement, VGE hereby grants You, for the term of the
    Commercial Agreement, the non-exclusive, non-transferable, revocable, worldwide right
    to (i) use and copy the Software, (ii) to merge, distribute and publish the Software solely
    in conjunction with and as part of the Digital Properties (the "License"), Territorial
    limitations contained in the Commercial Agreement will also apply to the License.

2.2 Evaluation. Prior to conclusion of a Commercial Agreement, VGE hereby grants You the
    right to download, copy and analyse the source code of the Software as may be made
    available by VGE to (i) ascertain whether the Software is fit for Your purpose and (ii)
    validate its functionality, and for no other purpose. You shall have no right to edit, modify,
    amend, manipulate, create derivative works, commercially use exploit or make available
    to third parties the Software under this permission. VGE may at any time revoke the
    license granted under this Clause 2.2 and/or stop making the Source Code of the
    Software available.

2.3 Sub-License. The license provided under clause 2.1 is sub-licensable only to Your affiliates
    and only to the extent that such affiliates are party to or may benefit from the Services
    under a Commercial Agreement. Any such sub-license ceases if the License provided in
    these License Terms ceases. The sub-license further ceases in case the entity is no longer
    Your affiliate. You are fully liable for any acts or omissions by any affiliates to which you
    provide a sub-license as if they are your own. You must inform VGE immediately upon
    request of any sub-licenses.

2.4 Modifications.

    (a) You have the right to modify the Software to the extent strictly required for the
        maintenance or the reinstatement of the agreed functionality of the Software.

    (b) You may propose modifications to the Software if You believe these are
        necessary to maintain, reinstate or improve the proper functionality of the
        Software in conjunction with the Digital Properties ("Modifications") to VGE as a
        pull request. VGE will carefully evaluate such request for modification and, in its
        sole discretion, decide whether or not to incorporate such Modifications. If
        Modifications are adopted, (i) You grant to VGE the unlimited, permanent,
        royalty-free, transferable, sub-licensable, worldwide, exclusive and irrevocable
        right for VGE to use, copy, publish, make available, sell, lease, rent, market,
        distribute, modify and otherwise commercially exploit the Modifications in any
        form and manner, whether now known or hereinafter devised, and (ii) the
        License shall extend to the modified Software.

2.5 Decompilation. You have the right to decompile the Software as permitted by mandatory
    law.

2.6 Backup. You may create a backup copy of the Software for security purposes, provided
    You affix a clear copyright notice as well as these License Terms to it. Any backup copy
    must be deleted without undue delay after termination or expiry of the Commercial
    Agreement for whatever reason or the revocation of the license by VGE.

2.7 Termination. For the avoidance of doubt, VGE may at any time terminate the licenses
    granted to Licensee either by individual communication (text form sufficient) or by
    providing a publicly visible notice on the repository at which the Software is made
    available. In such a case VGE shall grant Licensee a reasonable period (regularly 3 days)
    to remove the Software from the Digital Properties. The License also ceases in case the
    Commercial Agreement is terminated.

3. Intellectual Property Rights. VGE and/or its licensors own all rights, title and interest in
    the Software. The Software is protected by copyright or ancillary copyright for the benefit
    of VGE and/or its licensors. Any use of the Software other than permitted by these License
    Terms requires prior written approval of VGE. VGE explicitly retains all other rights, in
    particular such to trademarks, name or patents associated with VGE or the Software.

4. Audit. VGE may, at its request and subject to a reasonable advance notice, verify Your
    compliance with these License Terms. You will provide all relevant information,
    documentation and records as may be reasonably required for VGE or any third-party
    auditor appointed by VGE to verify Your compliance with these License Terms. VGE may
    carry out the audit on the Your premises during Your regular business hours or have it
    carried out by third parties bound to secrecy. VGE shall ensure that Your business
    operations are disrupted as little as possible by its on-site activities. If the inspection
    reveals that the Software is being used in any non-contractual manner, the costs of the
    inspection shall be borne by the Licensee; otherwise, the costs shall be borne by VGE. All
    other rights reserved.

5. Warranty and Liability

Except as stated otherwise in the Commercial Agreement, VGE's liability and warranty in
regard to the Software is limited or excluded as follows:

5.1 Warranty. The Software is provided "as is" and "as available", without any warranties or
    assurances of any kind, whether express, implied, or statutory, including but not limited
    to warranties of merchantability, fitness for a particular purpose, title, non-infringement,
    or accuracy. VGE expressly disclaims any warranties that the Software will meet the
    Licensee's requirements, be uninterrupted, timely, secure, or error-free. VGE does not
    guarantee any specific results from the use of the Software. The Licensee acknowledges
    that the Software may not be suitable for their intended purposes and assumes all risks
    associated with its use.

5.2 Liability and Indemnity.
    
    (a) VGE is liable without limitation in cases of wilful misconduct or gross negligence,
        in case a guarantee has been given by VGE, in cases of damage to life, body or
        health. Unless Licensor has caused violations of key contractual obligations by
        gross negligence or wilful misconduct, VGE’s liability is limited to the amount of
        typical and foreseeable damages. Key contractual obligation means any
        obligation whose fulfilment generally enables the proper execution of the
        contract, and on the orderly discharge of which the contracting partner may
        regularly rely. Any further liability of Licensor shall be excluded. Licensor’s
        liability in accordance with the German Product Liability Act remains unaffected.

    (b) The Parties agree that the damage regularly anticipated for an infringement of
        key contractual obligations by VGE does not exceed EUR 10.000,00.

    (c) Licensee shall indemnify and hold harmless VGE from any claims or damages
        based on Licensee's use of the Software in violation of these License Terms.

6. Final Provisions

6.1 Governing Law and venue. These License Terms are governed exclusively by the laws of
    the Federal Republic of Germany under exclusion of its conflict of law provisions and the
    UNCISG. Place of jurisdiction for all disputes arising out of or in connection with these
    License Terms shall be Hamburg, Germany.

6.2 No side agreements. There are no verbal collateral agreements. Amendments or
    additions to this contract must be made in writing, and this requirement cannot be
    waived orally.

6.3 Severability. If individual provisions of this contract should be or become invalid, this shall
    not affect the validity of the remaining provisions. The invalid provision shall be replaced
    by what the parties would have reasonably agreed in accordance with the originally
    intended purpose from an economic point of view. The same shall apply in the event of a
    loophole in the contract.

6.4 No assignment. Claims of Licensee against VGE under these License Terms may not be
    assigned, pledged or encumbered with the rights of a third party unless VGE expressly
    agrees to this.
      LICENSE
    }

  spec.authors      = { "Can Soykarafakili" => "can.soykarafakili@pubnative.net", "Eros Garcia Ponte" => "eros.ponte@pubnative.net", "Fares Benhamouda" => "fares.benhamouda@pubnative.net", "Orkhan Alizada" => "orkhan.alizada@pubnative.net", "Jose Contreras" => "jose.contreras@verve.com", "Aysel Abdullayeva" => "aysel.abdullayeva@verve.com" }
  spec.platform     = :ios, '12.0'
  spec.source       = { :git => "https://github.com/pubnative/googleMobileAds-hybid-adapters-ios.git", :tag => "3.6.1.0" }

  spec.source_files = 'GoogleMobileAdsAdapters/**/*.{swift,h,m}'
  spec.static_framework = true

  spec.dependency 'HyBid', '3.6.1'
  spec.dependency 'Google-Mobile-Ads-SDK', '~> 12.0'
end
