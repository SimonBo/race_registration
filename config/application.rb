require_relative 'boot'
require 'pdfkit'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RaceRegistration
  class Application < Rails::Application
    Rails.application.config.assets.precompile += %w(rails_admin.css rails_admin.js)
    config.middleware.use PDFKit::Middleware
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ["pl"]
    config.i18n.default_locale = :'pl'
  end
end
