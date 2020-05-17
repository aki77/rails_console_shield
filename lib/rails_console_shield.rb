require 'rails_console_shield/version'
require 'rails_console_shield/railtie'
require 'rails_console_shield/configuration'
require 'rails_console_shield/colors'

module RailsConsoleShield
  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def shield_environment?
      configuration.shield_environments.include?(::Rails.env)
    end

    def prompt_color
      configuration.environment_prompt_colors.fetch(::Rails.env.to_sym) { :none }
    end
  end
end
