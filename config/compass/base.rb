#!/usr/bin/env ruby

require 'sass'
require 'compass'

# include the griddles
griddles_extension = File.expand_path('../griddles.rb', __FILE__)
require griddles_extension

Compass.configuration do |config|
    # Require any additional compass plugins here.
    $root_path = File.expand_path(File.join(File.dirname(__FILE__), "../../"))
    config.project_path = $root_path
    config.sass_path = File.join($root_path, "scss/")
    config.cache_path = File.join($root_path, "tmp/sass-cache")
    config.images_path = File.join($root_path, "img/")
    config.javascripts_path = File.join($root_path, "js/")
    config.relative_assets = true
    config.output_style = :debug
    config.css_path = File.join($root_path, "css/debug/")
    config.line_comments = false
end

# Control precision
Sass::Script::Number.precision = 8
