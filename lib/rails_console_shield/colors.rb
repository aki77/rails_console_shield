module RailsConsoleShield
  module Colors
    COLORS = {
      none: 0,
      black: 30,
      red: 31,
      green: 32,
      yellow: 33,
      blue: 34,
      pink: 35,
      cyan: 36,
      white: 37,
    }.freeze

    module_function

    def color_text(text, color)
      color_code = COLORS.fetch(color.to_sym) { COLORS[:none] }
      "\e[#{color_code}m#{text}\e[0m"
    end
  end
end
