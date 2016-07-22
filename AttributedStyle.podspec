#
# Be sure to run `pod lib lint AttributedStyle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AttributedStyle'
  s.version          = '0.1.0'
  s.summary          = 'Swifty adaptation of NSAttributedStyle and NSParagraphStyle'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
# AttributedStyle
Swifty adaptation of NSAttributedStyle and NSParagraphStyle

- easy setup and reusing
- almost each attribute as function
- compact view
```
let attributedStyle = AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight))
let parapraphStyle = ParagraphStyle().lineBreakMode(.ByTruncatingMiddle)
let attributes = attributedStyle.paragraphStyle(parapraphStyle.style).foregroundColor(.grayColor()).attributes

let label = UILabel()
label.attributedText = NSAttributedString(string: "Attribute it!", attributes: attributes)
// or
label.attributedText = NSAttributedString(string: "Attribute it!", attributes: AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight)).foregroundColor(UIColor.darkGrayColor()).paragraphStyle(ParagraphStyle().alignment(.Center).style).attributes)
```
                       DESC

  s.homepage         = 'https://github.com/dimpiax/AttributedStyle'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pilipenko Dima' => 'dimpiax@gmail.com' }
  s.source           = { :git => 'https://github.com/dimpiax/AttributedStyle.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/dimpiax'

  s.ios.deployment_target = '8.0'

  s.source_files = 'AttributedStyle/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AttributedStyle' => ['AttributedStyle/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
