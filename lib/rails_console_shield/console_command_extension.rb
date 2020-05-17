module RailsConsoleShield
  module ConsoleCommandExtension
    def initialize(args = [], local_options = {}, config = {})
      super(args, local_options, config)

      env = options[:environment] || Rails.env
      if RailsConsoleShield.configuration.shield_environments.include?(env) && !local_options.include?('--no-sandbox')
        self.options = options.merge(sandbox: true)
      end
    end
  end
end
