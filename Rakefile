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
  app.name = 'HeartMonitor'  #exampleapp
  app.identifier = 'com.herokuapp.equanimity' 
  app.codesign_certificate = 'iPhone Developer: Ian Bates (Z239DKBM5F)'
   # Create ./build/iPhoneOS-7.1-Development/HeartMonitor.app/embedded.mobileprovision
   #  ERROR! Can't find a provisioning profile named `(?-mix:iOS Team Provisioning Profile)'

  app.icons = ["logo.png", "logo@2x.png"]

  # app.device_family = :iphone
  # app.interface_orientations = [:portrait]
  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'

  app.provisioning_profile = '/Users/DataBates/Desktop/provision_path/HeartMonitor.mobileprovision'

  # app.testflight.sdk = 'vendor/TestFlightSDK'
  # app.testflight.api_token = ''
  # app.testflight.team_token = 'TeamToken'

  app.pods do
    pod 'SVProgressHUD'
    # pod 'PixateFreestyle'
  end



  # app.name = 'Test App'
  # app.codesign_certificate = 'iPhone Distribution: Your Name Here'
  # app.identifier = 'com.yourCompany.yourApp'
  # app.provisioning_profile = '/path/to/your/distribution_provisioning_profile.mobileprovision'
  # app.testflight.sdk = 'vendor/TestFlightSDK'
  # app.testflight.api_token = 'APIToken'
  # app.testflight.team_token = 'TeamToken'



end
