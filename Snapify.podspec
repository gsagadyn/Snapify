Pod::Spec.new do |s|
  s.name             = 'Snapify'
  s.version          = '0.2.2'
  s.summary          = 'Swift implementation of Snapify architecture.'
  s.homepage         = 'https://github.com/gsagadyn/Snapify'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Grzegorz Sagadyn' => 'sagadyn@gmail.com' }
  s.source           = { :git => 'https://github.com/gsagadyn/Snapify.git', :tag => s.version.to_s }

  s.swift_version = "4.1"
  s.ios.deployment_target = '9.3'
  s.frameworks = 'UIKit', 'Foundation'
  s.requires_arc = true
  s.default_subspecs = 'Core', 'Store', 'Extensions'

  s.subspec 'Core' do |sp|
    sp.source_files = 'Snapify/Core/**/*'
  end

  s.subspec 'Store' do |sp|
    sp.source_files = 'Snapify/Store/**/*'
  end

  s.subspec 'Extensions' do |sp|
    sp.source_files = 'Snapify/Extensions/**/*'
  end

end
