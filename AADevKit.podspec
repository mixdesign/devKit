Pod::Spec.new do |s|
  s.name         = 'AADevKit'
  s.version      = '0.0.11'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.authors      =  { 'Almas Adilbek' => 'almas.adilbek@gmail.com' }
  s.summary      = 'The most recent used helper methods, categories, classes for Objective-C'
  s.homepage     = 'https://github.com/mixdesign/devKit'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  { :git => 'https://github.com/mixdesign/devKit.git', :tag => "v0.0.11" }
  s.source_files = 'AADevKit/**/*.{h,m}'
  s.public_header_files = 'AADevKit/**/*.h'
  s.requires_arc = true
end