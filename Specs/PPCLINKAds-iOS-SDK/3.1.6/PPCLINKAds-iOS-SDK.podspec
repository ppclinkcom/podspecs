Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-SDK'
  spec.version      = '3.1.6'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = 'PPCLINKAds-iOS-SDK (2018.10.23: Update với sdk mới của mopub, facebook và google. Thêm phương thức tạo native ads mới.)'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  spec.weak_frameworks =  'CoreImage'
  
  spec.resources = "PPCLINKAds-SDK/*.xib"	
 #spec.resource_bundles = {
  #   'PPCLINKAds-SDK' => ['PPCLINKAds-SDK/**/*.xib']
 #}
  spec.platform = :ios, '8.0'
  spec.source_files = "PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

  spec.dependency 'Google-Mobile-Ads-SDK'
  spec.dependency 'mopub-ios-sdk'
  spec.dependency 'FBAudienceNetwork'
  spec.dependency 'AdColony'
  #spec.dependency 'ADXLibrary', '1.5.16', :git => 'https://adx-developer:developer2017@github.com/adxcorp/ADXLibrary_iOS.git'
  
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
