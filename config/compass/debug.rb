config_file = File.expand_path('../base.rb', __FILE__)
require config_file

Compass.configuration do |config|
    # Default settings that need to be overriden
    output_style = :debug
    css_path = File.join($root_path, "css/debug/")
    line_comments = true
end

