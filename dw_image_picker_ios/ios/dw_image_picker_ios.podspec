#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint dw_image_picker_ios.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'dw_image_picker_ios'
  s.version          = '1.2.3'
  s.summary          = 'Choose images/videos from the library, crop images, and capture new photos/videos with ease.'
  s.description      = <<-DESC
Choose images/videos from the library, crop images, and capture new photos/videos with ease.
                       DESC
  s.homepage         = 'https://github.com/DeveloperWaybee/dw_image_picker/tree/main/dw_image_picker_ios'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'DeveloperWaybee' => 'developer@waybeetech.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'DW_TLPhotoPicker'
  s.dependency 'CropViewController'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
