Pod::Spec.new do |spec|
  spec.name         = 'PPCLINK-VDFramework-iOS'
  spec.version      = '2.0.0'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2017 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
  spec.summary      = '2020.05.05: bo lib + remove UIWebview; 2018.10.02: add funtions get iTunesApplicationIDWith URL; demo create pod spec; 2018.04.20: Support Off Popup khi TryNowText empty; 2017.10.09: Fix crash at: getListOfNotificationWithAdImageType; Fix isInstallAppId de chac chan chay o mainthread; Fix crash bug when build in xcode 9; Add more interstitial ad free time when popup ad show; Add config: InterstitialAdMaxTimePerSession, add notify kNotifyJustShowPopupAd; Add getAPPCLINKNativeAd, NTYPE_MESSAGE: Highest priority. Update libVDConfigNotification-1.8.28: Fix crash bug on Swift prj'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/vdframework-ios.git",
  				  :tag => "v#{spec.version}"}
  				  
  spec.platform = :ios, '7.0'
  spec.source_files = "**/*.{h,m,a}"
  spec.vendored_libraries =  "**/*.a"
  
  spec.requires_arc = false
    
  spec.dependency 'Reachability'
  spec.dependency 'UIDevice-Hardware'
    
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\""}
end