#
# Be sure to run `pod lib lint HHSDKAndNIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHSDKAndNIMKit'
  s.version          = '0.1.0'
  s.summary          = '和缓医疗+云信UI库'
  s.homepage         = 'https://github.com/BoySimonHu/HHDoctorAndNIMKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Simon.Hu' => 'hfzdeyx@163.com' }
  s.ios.deployment_target = '9.0'
  s.source           = { :git => 'https://github.com/BoySimonHu/HHDoctorAndNIMKit.git', :tag => s.version.to_s }

  s.dependency "NIMKit/Full"
  s.default_subspec = 'Base'

  s.subspec 'Base' do |base|
        base.vendored_frameworks = 'HHSDKAndNIMKit/Framework/*.framework'
        base.resources = 'HHSDKAndNIMKit/Framework/resources/*.bundle'

        base.frameworks = 'SystemConfiguration', 'MobileCoreServices', 'AVFoundation', 'CoreTelephony', 'VideoToolbox', 'AudioToolbox', 'CoreMedia'
        base.libraries = 'z', 'sqlite3.0', 'c++', 'resolv.9'
    end
  
  # s.resource_bundles = {
  #   'HHSDKAndNIMKit' => ['HHSDKAndNIMKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
