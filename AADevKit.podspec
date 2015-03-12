Pod::Spec.new do |s|
  s.name         = 'AADevKit'
  s.version      = '0.0.1'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.authors      =  { 'Almas Adilbek' => 'almas.adilbek@gmail.com' }
  s.summary      = 'The most recent used helper methods, categories, classes for Objective-C'
  s.homepage     = 'https://github.com/mixdesign/devKit'

# Source Info
  s.platform     =  :ios, '7.0'
  s.source       =  { :https://github.com/mixdesign/devKit.git', :tag => "0.0.1" }
  s.requires_arc = true
end