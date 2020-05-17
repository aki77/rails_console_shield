require 'rails/railtie'
require 'rails_console_shield/console'
require 'rails_console_shield/console_command_extension'

module RailsConsoleShield
  class Railtie < Rails::Railtie
    include RailsConsoleShield::Colors

    console do |app|
      if RailsConsoleShield.shield_environment?
        Console.print_sandbox if app.sandbox?
        Console.print_warning
      end

      unless ARGV.include?('-r')
        ARGV.push '-r', File.expand_path('./console/irbrc.rb', __dir__)
      end
    end

    config.after_initialize do
      require 'rails/command'
      require 'rails/commands/console/console_command'
      Rails::Command::ConsoleCommand.prepend ConsoleCommandExtension
    end
  end
end
