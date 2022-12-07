require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Api
  class Application < Rails::Application
    config.load_defaults 7.0
    config.generators do |g|
      g.assets    =   false
      g.helper    =   false
      g.jbuilder  =   false
      g.test_framework :rspec
    end
  end
end
