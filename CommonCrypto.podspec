Pod::Spec.new do |spec|
  spec.name         = "CommonCrypto"
  spec.summary      = "CommonCrypto for swift via Cocoapods"
  spec.version      = "1.0.0"
  spec.homepage     = "https://github.com/bikram990/CommonCrypto"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = { "Bikramjeet Singh" => "bikramjs@in.ibm.com" }
  spec.source       = { :git => "https://github.com/bikram990/CommonCrypto.git", :branch => "master" }
  spec.source_files = "Sources/CommonCryptoShim.h"
  spec.platform = :osx, :ios
  spec.ios.deployment_target = "9.0"
  spec.osx.deployment_target = "10.10"
  spec.requires_arc = true
  spec.preserve_path = 'Sources/module/module.modulemap'
  spec.public_header_files = 'Sources/CommonCryptoShim.h'
  spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '"$(PODS_ROOT)/CommonCrypto/Sources/module/**"' }
  spec.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '"$(PODS_ROOT)/CommonCrypto/Sources/module/**"' }
end
