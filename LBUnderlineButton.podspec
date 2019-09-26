Pod::Spec.new do |spec|
  spec.name         = "LBUnderlineButton"
  spec.version      = "0.0.1"
  spec.summary      = "自定义下划线距离颜色的Button"
  spec.description  = "系统的下划线贴的太紧不太美观，LBUnderlineButton的下划线间距颜色自定义，并且长度会根据title长短自适应。"
  spec.homepage     = "https://github.com/A1129434577/LBUnderlineButton"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "刘彬" => "1129434577@qq.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = '8.0'
  spec.source       = { :git => 'https://github.com/A1129434577/LBUnderlineButton.git', :tag => spec.version.to_s }
  spec.source_files = "LBUnderlineButton/**/*.{h,m}"
  spec.requires_arc = true
end
