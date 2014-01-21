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

  app.codesign_certificate = ENV['GRAFFITI_CODESIGN_CERTIFICATE']

  app.identifier = ENV['GRAFFITI_APP_IDENTIFIER']

  app.provisioning_profile = ENV['GRAFFITI_APP_PROVISIONING_PROFILE']

  app.pods do
    pod 'AFNetworking'
  end

end
