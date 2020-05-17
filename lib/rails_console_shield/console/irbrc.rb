include RailsConsoleShield::Colors

app_name = Rails.application.class.module_parent.to_s.underscore.dasherize
env_name = Rails.env
sandbox = ::Rails.application.sandbox? ? '(sandbox)' : ''
color = RailsConsoleShield.prompt_color

prompt = "#{app_name}(#{env_name})#{sandbox}:%03n:%i"

IRB.conf[:PROMPT][:RAILS_ENV] = {
  PROMPT_I: color_text("#{prompt}> ", color),
  PROMPT_N: color_text("#{prompt}> ", color),
  PROMPT_S: color_text("#{prompt}%l ", color),
  PROMPT_C: color_text("#{prompt}* ", color),
  RETURN: color_text('=> ', color).concat("%s\n")
}

IRB.conf[:PROMPT_MODE] = :RAILS_ENV
