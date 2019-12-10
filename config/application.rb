require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module SamplePp
  # This shiny device polishes bared foos
  class Application < Rails::Application
    config.load_defaults 6.0
    # Where the I18n library should search for translation files
    I18n.load_path += Dir[Rails.root.join("lib", "locale", "*.{rb,yml}")]
    # Permitted locales available for the application
    I18n.available_locales = %i[en vi]
    # Set default locale to :vi
    I18n.default_locale = :vi
  end
end
