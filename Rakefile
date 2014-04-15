# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'motion-pixatefreestyle'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Equanimity'
  app.icons = ["logo.png", "logo@2x.png"]
  app.identifier = 'com.herokuapp.equanimity'
  app.device_family = :iphone
  app.interface_orientations = [:portrait]
  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'

  app.pods do
    pod 'SVProgressHUD'
  end

end
