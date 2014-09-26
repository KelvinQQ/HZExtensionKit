
Pod::Spec.new do |s|

  s.name         = "HZExtensionKit"
  s.version      = "2.3.1"
  s.summary      = "Useful Category"
  s.homepage     = "http://github.com/HistoryZhang/HZExtensionKit"
  s.license      = "MIT"
  s.author       = { "History" => "history_zq@126.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/HistoryZhang/HZExtensionKit.git", :tag => "2.3.1" }
  s.source_files  = "HZExtensionKit/*.{h,m}"
  s.requires_arc = true

  s.subspec 'NSAttributedString' do |ss|
      ss.source_files = 'HZExtensionKit/NSAttributedString/*.{h,m}'
  end

  s.subspec 'NSURL' do |ss|
      ss.source_files = 'HZExtensionKit/NSURL/*.{h,m}'
  end

  s.subspec 'NSDate' do |ss|
      ss.source_files = 'HZExtensionKit/NSDate/*.{h,m}'
  end

  s.subspec 'NSData' do |ss|
      ss.source_files = 'HZExtensionKit/NSData/*.{h,m}'
  end

  s.subspec 'NSDictionary' do |ss|
      ss.source_files = 'HZExtensionKit/NSDictionary/*.{h,m}'
  end

  s.subspec 'NSFileManager' do |ss|
      ss.source_files = 'HZExtensionKit/NSFileManager/*.{h,m}'
  end

  s.subspec 'NSString' do |ss|
      ss.source_files = 'HZExtensionKit/NSString/*.{h,m}'
  end

  s.subspec 'Public' do |ss|
      ss.source_files = 'HZExtensionKit/Public/*.{h,m}'
  end

  s.subspec 'UIAlertView' do |ss|
      ss.source_files = 'HZExtensionKit/UIAlertView/*.{h,m}'
  end

  s.subspec 'UIButton' do |ss|
      ss.source_files = 'HZExtensionKit/UIButton/*.{h,m}'
  end

  s.subspec 'UIColor' do |ss|
      ss.source_files = 'HZExtensionKit/UIColor/*.{h,m}'
  end

  s.subspec 'UIImage' do |ss|
      ss.source_files = 'HZExtensionKit/UIImage/*.{h,m}'
  end

  s.subspec 'UIView' do |ss|
      ss.source_files = 'HZExtensionKit/UIView/*.{h,m}'
  end

end
