Pod::Spec.new do |spec|
  spec.name          = 'CoreLib'
  spec.version       = '1.0.1'
  spec.summary       = 'Core Library for NoMansLand'
  spec.description   = 'This is an Core Library which will help us in achieving nothing'
  spec.homepage      = 'https://greensyntax.app'
  spec.author        = { 'Abhishek Ravi' => 'ab.abhishek.ravi@gmail.com' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :git => 'https://github.com/greenSyntax/core-lib.git', :tag => spec.version.to_s }
  spec.swift_version = '5.0'
  spec.ios.deployment_target = '13.0'

  spec.ios.vendored_frameworks = [
    "Frameworks/auth_library.xcframework",
    "Frameworks/analytics_library.xcframework"
  ]


end