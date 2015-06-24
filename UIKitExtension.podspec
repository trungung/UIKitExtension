#
# Be sure to run `pod lib lint UIKitExtension.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UIKitExtension"
  s.version          = "0.1.0"
  s.summary          = "A Swift Extension for UIKit."
  s.description      = <<-DESC
                       An optional longer description of UIKitExtension

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/trungung/UIKitExtension"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "TrungUng" => "trung.ungtoan@asnet.com.vn" }
  s.source           = { :git => "https://github.com/trungung/UIKitExtension.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'UIKitExtension' => ['Pod/Assets/*.png']
  }
  s.public_header_files = "Classes/**/*.swift"

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

end
