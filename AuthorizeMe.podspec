Pod::Spec.new do |s|

  s.name = "AuthorizeMe"
  s.summary = "Authorization with social networks"
  s.version = "1.2.0"
  s.homepage = "https://github.com/rubygarage/authorize-me"
  s.license = 'MIT'

  s.author = {
     "RubyGarage" => "vlad@rubygarage.org"
  }

  s.source = {
    :git => "https://github.com/rubygarage/authorize-me.git",
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '10.0'
  s.requires_arc = true

  s.subspec 'Core' do |ss|

    ss.source_files = 'Core/**/*.swift'
    ss.preserve_paths = 'CocoaPods/**/*'

    ss.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]' => '$(PODS_ROOT)/AuthorizeMe/CocoaPods/iphoneos',
      'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]' => '$(PODS_ROOT)/AuthorizeMe/CocoaPods/iphonesimulator'
    }

  end

  s.subspec 'Facebook' do |ss|

    ss.dependency 'AuthorizeMe/Core'
    ss.source_files = 'Providers/Facebook/*.swift'

  end

  s.subspec 'Twitter' do |ss|

    ss.dependency 'AuthorizeMe/Core'
    ss.source_files = 'Providers/Twitter/*.swift'

  end

  s.subspec 'Google' do |ss|

    ss.dependency 'AuthorizeMe/Core'
    ss.source_files = 'Providers/Google/*.swift'

  end

  s.subspec 'Instagram' do |ss|

    ss.dependency 'AuthorizeMe/Core'
    ss.source_files = 'Providers/Instagram/*.swift'

  end

  s.subspec 'LinkedIn' do |ss|

    ss.dependency 'AuthorizeMe/Core'
    ss.source_files = 'Providers/LinkedIn/*.swift'

  end

end
