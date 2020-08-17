#
# Be sure to run `pod lib lint FEKYC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FEKYC'
  s.version          = '0.1.8'
  s.summary          = 'FPT.AI eKYC'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  FPT.AI eKYC provides state-of-the-art deep learning algorithms to compare the portrait in personal identification documents such as ID card, driver’s license, passport… with real face to verify whether they are the same person.

   

  This solution can be applied for automated data input process in various domains including finance and banking, telecommunications, travel, tourism and hospitality; in such use cases as bank account opening, credit card application processing, user registration, guest verification / reservation, off-site check-in, etc.
                       DESC

  s.homepage         = 'https://github.com/tuananhcn08a/FPT-EKYC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anhdt64' => 'anhdt64@fpt.com.vn' }
  s.source           = { :http => 'https://github.com/tuananhcn08a/FPT-EKYC/raw/master/FEKYC.zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'FEKYC/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'FEKYC' => ['FEKYC/Assets/*']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'MBProgressHUD'
  s.dependency 'Alamofire'
  s.dependency 'TPKeyboardAvoiding'
  s.dependency 'HydraAsync'
  s.dependency 'IDMPhotoBrowser'
end
