require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Jetfuel
  class Application < Rails::Application
    config.time_zone = 'Mountain Time (US & Canada)'
  end
end
