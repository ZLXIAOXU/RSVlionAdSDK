Pod::Spec.new do |spec|

  spec.name         = "RSVlionAd"
  spec.version      = "1.0.1"
  spec.summary      = "A short description of RSVlionAd."

  spec.description  = <<-DESC
  不包含穿山甲SDK
  安装执行
  pod 'RSVlionAd'
                   DESC

  spec.homepage     = "http://EXAMPLE/RSVlionAd"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "61242553@qq.com" => "61242553@qq.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/ZLXIAOXU/RSVlionAdSDK.git", :tag => "#{spec.version}" }

  # spec.source_files  = "RSVlionAd.framework/Headers", "*.{h,m}"

    spec.vendored_frameworks = 'RSVlionAd.framework'

end
