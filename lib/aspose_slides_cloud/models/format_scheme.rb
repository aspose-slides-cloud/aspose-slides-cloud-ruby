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
  # Represents Format Scheme for slide's theme
  class FormatScheme < ResourceBase
    # Background styles.
    attr_accessor :background_styles

    # Effect styles.
    attr_accessor :effect_styles

    # Fill styles.
    attr_accessor :fill_styles

    # Line style.
    attr_accessor :line_styles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'background_styles' => :'BackgroundStyles',
        :'effect_styles' => :'EffectStyles',
        :'fill_styles' => :'FillStyles',
        :'line_styles' => :'LineStyles',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'background_styles' => :'Array<FillFormat>',
        :'effect_styles' => :'Array<EffectFormat>',
        :'fill_styles' => :'Array<FillFormat>',
        :'line_styles' => :'Array<LineFormat>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'BackgroundStyles')
        if (value = attributes[:'BackgroundStyles']).is_a?(Array)
          self.background_styles = value
        end
      end

      if attributes.has_key?(:'EffectStyles')
        if (value = attributes[:'EffectStyles']).is_a?(Array)
          self.effect_styles = value
        end
      end

      if attributes.has_key?(:'FillStyles')
        if (value = attributes[:'FillStyles']).is_a?(Array)
          self.fill_styles = value
        end
      end

      if attributes.has_key?(:'LineStyles')
        if (value = attributes[:'LineStyles']).is_a?(Array)
          self.line_styles = value
        end
      end
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
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          background_styles == o.background_styles &&
          effect_styles == o.effect_styles &&
          fill_styles == o.fill_styles &&
          line_styles == o.line_styles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, background_styles, effect_styles, fill_styles, line_styles].hash
    end
  end
end
