Pod::Spec.new do |s|
  s.name             = "StravaResultKit"
  s.version          = "0.0.2"
  s.summary          = "Result type API built on top of StravaKit"
  s.description      = "Swift framework for integrating with the Strava API using Result type."
  s.module_name      = "StravaResultKit"
  s.homepage         = "https://github.com/StravaKit/StravaResultKit"
  s.license          = 'MIT'
  s.author           = { "Brennan Stehling" => "brennan@smallsharptools.com" }
  s.source           = { :git => "https://github.com/StravaKit/StravaResultKit.git", :tag => "v0.0.2" }
  s.social_media_url = 'https://twitter.com/smallsharptools'
  s.source_files = 'Sources/*.swift'
  s.cocoapods_version = '>= 1.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.frameworks = 'Foundation', 'CoreLocation', 'Security'
  s.dependency 'StravaKit', '~> 0.9'
end