# Require the defaults
config_file = File.expand_path('../base.rb', __FILE__)
require config_file


Compass.configuration do |config|
    config.css_path = File.join($root_path, "css/min/")
    config.output_style = :compressed
    config.line_comments = false
end
