# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bubble-wrap'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Graffiti'

  app.codesign_certificate = "iPhone Developer: William Crouse (SRJHVQEG5X)"

  app.identifier = "58DH99VCDR.com.armontdevelopment.graffiti"

  app.provisioning_profile = "/Users/williamcrouse/Desktop/Will_Graffiti.mobileprovision"

end
