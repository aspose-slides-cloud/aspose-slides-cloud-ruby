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
  # Provides options that control how a presentation is saved in Gif format.
  class GifExportOptions < ImageExportOptionsBase
    # Determines whether hidden slides will be exported.
    attr_accessor :export_hidden_slides

    # Gets or sets transition FPS [frames/sec]
    attr_accessor :transition_fps

    # Gets or sets default delay time [ms].
    attr_accessor :default_delay

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'export_hidden_slides' => :'ExportHiddenSlides',
        :'transition_fps' => :'TransitionFps',
        :'default_delay' => :'DefaultDelay',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'export_hidden_slides' => :'BOOLEAN',
        :'transition_fps' => :'Integer',
        :'default_delay' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'ExportHiddenSlides')
        self.export_hidden_slides = attributes[:'ExportHiddenSlides']
      end

      if attributes.has_key?(:'TransitionFps')
        self.transition_fps = attributes[:'TransitionFps']
      end

      if attributes.has_key?(:'DefaultDelay')
        self.default_delay = attributes[:'DefaultDelay']
      end
      self.format = 'gif'
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          format == o.format &&
          height == o.height &&
          width == o.width &&
          export_hidden_slides == o.export_hidden_slides &&
          transition_fps == o.transition_fps &&
          default_delay == o.default_delay
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, gradient_style, font_fallback_rules, font_subst_rules, format, height, width, export_hidden_slides, transition_fps, default_delay].hash
    end
  end
end
