require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module OriginalApp1
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.default_locale = :ja
    config.assets.initialize_on_precompile = false
  end
end
