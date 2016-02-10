Pod::Spec.new do |s|
  s.name         = "UIViewController+ODKeyboardObserver"
  s.version      = "0.1.0"
  s.summary      = "Category for UIViewController managing keyboard appearance."
  s.homepage     = "https://github.com/Rogaven/UIViewController-ODKeyboardObserver"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Alexey Nazaroff" => "alexx.nazaroff@gmail.com" }
  s.source       = { :git => "https://github.com/Rogaven/UIViewController-ODKeyboardObserver.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'src/**/*'
  s.requires_arc = true
end
