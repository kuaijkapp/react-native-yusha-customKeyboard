require "json"

Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.author       = package['author']
  s.license      = package['license']
  s.requires_arc = true
  s.homepage     = "https://github.com/kuaijkapp/react-native-yusha-customKeyboard#readme"
  s.source       = { :git => "https://github.com/kuaijkapp/react-native-yusha-customKeyboard.git" }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "9.0"
  s.dependency 'React'
end
