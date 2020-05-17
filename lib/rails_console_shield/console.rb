require 'rails_console_shield/colors'

module RailsConsoleShield
  module Console
    class << self
      include Colors

      def print_warning
        puts color_text(RailsConsoleShield.configuration.warn_text)
      end

      def print_sandbox
        puts color_text(<<~TEXT)
          Sets the console to sandbox mode by default.
          To disable it, run it with the --no-sandbox option.
        TEXT
      end

      private

      def color_text(text)
        Colors.color_text(text, RailsConsoleShield.prompt_color)
      end
    end
  end
end
