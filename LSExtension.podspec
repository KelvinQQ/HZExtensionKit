Pod::Spec.new do |s|
  s.name             = "LSExtension"
  s.version          = "1.0.0"
  s.summary          = "Some Category for Object-C."
  s.description      = <<-DESC
                       Categor about UIColor, UIView, NSDate, NSFileManager, UIAlertView, UIButton.And Some Macro.
                       DESC
  s.homepage         = "https://github.com/HistoryZhang/LSExtension"
  s.license          = 'MIT'
  s.author           = { "张清" => "history_zq@163.com" }
  s.source           = { :git => "https://github.com/HistoryZhang/LSExtension.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = false

  s.source_files = 'LSExtension/*'
  s.frameworks = 'Foundation', 'UIKit'

end