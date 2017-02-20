platform :ios, '9.0'
swift_version = "3.0"

target 'StravaResultKit' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for StravaResultKit
#  pod 'StravaKit', '~> 0.9'
  pod 'StravaKit', :git => 'https://github.com/StravaKit/StravaKit.git', :branch => 'result-support'
  pod 'Result', '~> 3.0'

  target 'StravaResultKitTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'StravaResultKitDemo' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for StravaResultKitDemo

  target 'StravaResultKitDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
