# Require the defaults
config_file = File.expand_path('../base.rb', __FILE__)
require config_file


Compass.configuration do |config|
    css_path = File.join($root_path, "css/expanded/")
    output_style = :expanded
    line_comments = false
end
