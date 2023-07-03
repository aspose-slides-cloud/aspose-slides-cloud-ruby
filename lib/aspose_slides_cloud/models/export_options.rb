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
  # Represents export options for whole presentation.
  class ExportOptions < BaseObject
    # Default regular font for rendering the presentation. 
    attr_accessor :default_regular_font

    # Gets of sets list of font fallback rules.
    attr_accessor :font_fallback_rules

    # Gets of sets list of font substitution rules.
    attr_accessor :font_subst_rules

    attr_accessor :format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_regular_font' => :'DefaultRegularFont',
        :'font_fallback_rules' => :'FontFallbackRules',
        :'font_subst_rules' => :'FontSubstRules',
        :'format' => :'Format',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'default_regular_font' => :'String',
        :'font_fallback_rules' => :'Array<FontFallbackRule>',
        :'font_subst_rules' => :'Array<FontSubstRule>',
        :'format' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'DefaultRegularFont')
        self.default_regular_font = attributes[:'DefaultRegularFont']
      end

      if attributes.has_key?(:'FontFallbackRules')
        if (value = attributes[:'FontFallbackRules']).is_a?(Array)
          self.font_fallback_rules = value
        end
      end

      if attributes.has_key?(:'FontSubstRules')
        if (value = attributes[:'FontSubstRules']).is_a?(Array)
          self.font_subst_rules = value
        end
      end

      if attributes.has_key?(:'Format')
        self.format = attributes[:'Format']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          format == o.format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, font_fallback_rules, font_subst_rules, format].hash
    end
  end
end
