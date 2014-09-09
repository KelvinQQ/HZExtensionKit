
Pod::Spec.new do |s|

  s.name         = "HZExtensionKit"
  s.version      = "2.0.2"
  s.summary      = "Useful Category"
  s.description  = <<-DESC
                  Category For UIColor, UIButton, UIAlertView, UIView, NSDate, NSFileManager, NSDictionary, NSString, UIImage.
                  Some Common Macro.
                   DESC
  s.homepage     = "http://github.com/HistoryZhang/HZExtensionKit"
  s.license      = "MIT"
  s.author       = { "History" => "history_zq@163.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/HistoryZhang/HZExtensionKit.git", :tag => "2.0.2" }
  s.source_files  = "HZExtensionKit/*.{h,m}"
  s.requires_arc = true

end

s.subspec 'NSAttributedString' do |ss|
    ss.source_files = 'NSAttributedString/*.{h,m}'
end

s.subspec 'NSData' do |ss|
    ss.source_files = 'NSData/*.{h,m}'
end

s.subspec 'NSDictionary' do |ss|
    ss.source_files = 'NSDictionary/*.{h,m}'
end

s.subspec 'NSFileManager' do |ss|
    ss.source_files = 'NSFileManager/*.{h,m}'
end

s.subspec 'NSString' do |ss|
    ss.source_files = 'NSString/*.{h,m}'
end

s.subspec 'Public' do |ss|
    ss.source_files = 'Public/*.{h,m}'
end

s.subspec 'UIAlertView' do |ss|
    ss.source_files = 'UIAlertView/*.{h,m}'
end

s.subspec 'UIButton' do |ss|
    ss.source_files = 'UIButton/*.{h,m}'
end

s.subspec 'UIColor' do |ss|
    ss.source_files = 'UIColor/*.{h,m}'
end

s.subspec 'UIImage' do |ss|
    ss.source_files = 'UIImage/*.{h,m}'
end

s.subspec 'UIView' do |ss|
    ss.source_files = 'UIView/*.{h,m}'
end