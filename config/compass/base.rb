#!/usr/bin/env ruby

require 'sass'
require 'compass'

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

# SASS Extension for grid data calculation performance

module GriddlesFunctions

    def get_grid_selector_values(step, fraction_list, fraction_selector_separator, mq, class_prefix, selector_sep)

        # convert to raw values rather than handle sass values internally.
        fraction_list = fraction_list.value
        step = step.value
        fraction_selector_separator = fraction_selector_separator.value
        mq = mq.value
        class_prefix = class_prefix.value
        selector_sep = selector_sep.value

        # Create the steps list from the step value
        steps_list = (step..100).step(step).to_a
        # Create hash for storing what we are doing
        sel_value_dict = Hash.new
        # Iterate over steps list and add to hash
        mq = mq != "" ? mq + selector_sep : mq
        selector_prefix = mq + class_prefix + selector_sep

        steps_list.each {|x| sel_value_dict[Float(x.to_i)] = ["." + selector_prefix + x.to_s]}
        # Iterate over fraction list and add to hash
        for item in fraction_list
            i = 1
            denominator = item.to_i
            while i <= Integer(item)-1
                numerator = i
                value = Float(100) / denominator * numerator

                selector = "." + selector_prefix + String(numerator) + fraction_selector_separator + String(denominator)
                if sel_value_dict.has_key?(value)
                    sel_value_dict[value] = sel_value_dict[value].push(selector)
                else
                    sel_value_dict[value] = [selector]
                end
                i += 1
            end
        end

        sel_value_list = []
        sel_value_dict.each do|value,selector|
          sel_value_list.push(Sass::Script::List.new([Sass::Script::String.new(selector.join(", ")), Sass::Script::Number.new(value)], :space))
        end
        return  Sass::Script::List.new(sel_value_list, :comma)
    end
end

module Sass::Script::Functions
  include GriddlesFunctions
end
