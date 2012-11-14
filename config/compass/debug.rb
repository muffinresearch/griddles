config_file = File.expand_path('../base.rb', __FILE__)
require config_file

Compass.configuration do |config|
    config.output_style = :debug
    config.css_path = File.join($root_path, "css/debug/")
    config.line_comments = true
end
