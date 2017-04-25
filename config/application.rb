require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
#forcing dotenv file , so it can work in the console
require "dotenv-rails"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevcampPortfolio
  class Application < Rails::Application
   # config.generators do |g|
     # g.orm             :active_record
    #  g.template_engine :erb
     # g.test_framework  :test_unit, fixture: false
    #  g.stylesheets     false
    #  g.javascripts     true
   # end
   # no recommanded cuz it is allowed hacker to hack 
   #config.action_controller.permit_all_parameters = true
    
  end
end
