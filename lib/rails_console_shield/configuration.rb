module RailsConsoleShield
  class Configuration
    attr_accessor :environment_prompt_colors, :warn_text, :shield_environments

    def initialize
      self.environment_prompt_colors = {
        development: :green,
        staging: :yellow,
        production: :red,
      }

      self.warn_text =<<~TEXT
        WARNING: YOU ARE USING RAILS CONSOLE IN PRODUCTION!
        Changing data can cause serious data loss.
        Make sure you know what you're doing.
      TEXT

      self.shield_environments = %w[production]
    end
  end
end
