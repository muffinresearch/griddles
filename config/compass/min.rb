# Require any additional compass plugins here.
root_path = File.expand_path(File.join(File.dirname(__FILE__), "../../"))
project_path = root_path
css_path = File.join(root_path, "css/min/")
sass_path = File.join(root_path, "scss/")
cache_path = File.join(root_path, "tmp/sass-cache")
images_path = File.join(root_path, "img/")
javascripts_path = File.join(root_path, "js/")

# You can select your preferred output style here (can be overridden via the command line):
output_style = :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = false

# Control precision
Sass::Script::Number.precision = 8

