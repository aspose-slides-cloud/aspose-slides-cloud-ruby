=begin
Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

require 'date'

module AsposeSlidesCloud
  # Provides options that control how a presentation is saved in an video format.
  class VideoExportOptions < ExportOptions
    # Slides transition duration.
    attr_accessor :slides_transition_duration

    # Video transition type
    attr_accessor :transition_type

    # Duration of transition defined in TransitionType property.
    attr_accessor :transition_duration

    # Video resolution type
    attr_accessor :video_resolution_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'slides_transition_duration' => :'SlidesTransitionDuration',
        :'transition_type' => :'TransitionType',
        :'transition_duration' => :'TransitionDuration',
        :'video_resolution_type' => :'VideoResolutionType',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'slides_transition_duration' => :'Integer',
        :'transition_type' => :'String',
        :'transition_duration' => :'Integer',
        :'video_resolution_type' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'SlidesTransitionDuration')
        self.slides_transition_duration = attributes[:'SlidesTransitionDuration']
      end

      if attributes.has_key?(:'TransitionType')
        self.transition_type = attributes[:'TransitionType']
      end

      if attributes.has_key?(:'TransitionDuration')
        self.transition_duration = attributes[:'TransitionDuration']
      end

      if attributes.has_key?(:'VideoResolutionType')
        self.video_resolution_type = attributes[:'VideoResolutionType']
      end
      self.format = 'mpeg4'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      transition_type_validator = EnumAttributeValidator.new('String', ['None', 'Fade', 'Distance', 'Slidedown', 'Slideright', 'Slideleft', 'Slideup', 'Smoothleft', 'Smoothright', 'Smoothup', 'Smoothdown', 'Rectcrop', 'Circlecrop', 'Circleclose', 'Circleopen', 'Horzclose', 'Horzopen', 'Vertclose', 'Vertopen', 'Diagbl', 'Diagbr', 'Diagtl', 'Diagtr', 'Hlslice', 'Hrslice', 'Vuslice', 'Vdslice', 'Dissolve', 'Pixelize', 'Radial'])
      return false unless transition_type_validator.valid?(@transition_type)
      video_resolution_type_validator = EnumAttributeValidator.new('String', ['FullHD', 'SD', 'HD', 'QHD'])
      return false unless video_resolution_type_validator.valid?(@video_resolution_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transition_type Object to be assigned
    def transition_type=(transition_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Fade', 'Distance', 'Slidedown', 'Slideright', 'Slideleft', 'Slideup', 'Smoothleft', 'Smoothright', 'Smoothup', 'Smoothdown', 'Rectcrop', 'Circlecrop', 'Circleclose', 'Circleopen', 'Horzclose', 'Horzopen', 'Vertclose', 'Vertopen', 'Diagbl', 'Diagbr', 'Diagtl', 'Diagtr', 'Hlslice', 'Hrslice', 'Vuslice', 'Vdslice', 'Dissolve', 'Pixelize', 'Radial'])
      unless validator.valid?(transition_type)
        fail ArgumentError, 'invalid value for "transition_type", must be one of #{validator.allowable_values}.'
      end
      @transition_type = transition_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] video_resolution_type Object to be assigned
    def video_resolution_type=(video_resolution_type)
      validator = EnumAttributeValidator.new('String', ['FullHD', 'SD', 'HD', 'QHD'])
      unless validator.valid?(video_resolution_type)
        fail ArgumentError, 'invalid value for "video_resolution_type", must be one of #{validator.allowable_values}.'
      end
      @video_resolution_type = video_resolution_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          delete_embedded_binary_objects == o.delete_embedded_binary_objects &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          skip_java_script_links == o.skip_java_script_links &&
          format == o.format &&
          slides_transition_duration == o.slides_transition_duration &&
          transition_type == o.transition_type &&
          transition_duration == o.transition_duration &&
          video_resolution_type == o.video_resolution_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, delete_embedded_binary_objects, gradient_style, font_fallback_rules, font_subst_rules, skip_java_script_links, format, slides_transition_duration, transition_type, transition_duration, video_resolution_type].hash
    end
  end
end
