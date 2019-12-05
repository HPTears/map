#
# Be sure to run `pod lib lint XKMap.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XKMap'
  s.version          = '0.1.2'
  s.summary          = 'XKMap.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'XKMap 使用抽象工程模式 封装的 具有强扩展性的地图框架'

  s.homepage         = 'http://192.168.2.201/XK-iOS-Component'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '459834127@qq.com' => '459834127@qq.com' }
  s.source           = { :git => 'http://192.168.2.201/XK-iOS-Component/XKMap.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XKMap/Classes/**/*'
  
  # s.resource_bundles = {
  #   'XKMap' => ['XKMap/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'BaiduMapKit'
  s.dependency 'BMKLocationKit'
  s.dependency 'YYImage'
end
