#
# Be sure to run `pod lib lint WZIMProtocol.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WZIMProtocol'
  s.version          = '1.0.0'
  s.summary          = 'iM通用协议,'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/WZLYiOS/WZIMProtocol'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiuqixiang' => '739140860@qq.com' }
  s.source           = { :git => 'https://github.com/WZLYiOS/WZIMProtocol.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc = true
  s.static_framework = true
  s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "WZIMProtocol/Classes/Procotol/*", "WZIMProtocol/Classes/UI/*"
    ss.dependency 'SnapKit', '~> 5.0.1'
  end

  # 协议框架
  s.subspec "Procotol" do |ss|
    ss.source_files = "WZIMProtocol/Classes/Procotol/*"
  end
  
  # UI
  s.subspec "UI" do |ss|
    ss.source_files = "WZIMProtocol/Classes/UI/*"
    ss.dependency 'SnapKit', '~> 5.0.1'
  end

  
end
