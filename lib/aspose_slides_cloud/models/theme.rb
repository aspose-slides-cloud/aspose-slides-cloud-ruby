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
  # Represents Slide's theme 
  class Theme < ResourceBase
    # Name.
    attr_accessor :name

    # Color scheme.
    attr_accessor :color_scheme

    # Font scheme.
    attr_accessor :font_scheme

    # Format scheme.
    attr_accessor :format_scheme

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'name' => :'Name',
        :'color_scheme' => :'ColorScheme',
        :'font_scheme' => :'FontScheme',
        :'format_scheme' => :'FormatScheme',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'name' => :'String',
        :'color_scheme' => :'ResourceUri',
        :'font_scheme' => :'ResourceUri',
        :'format_scheme' => :'ResourceUri',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'ColorScheme')
        self.color_scheme = attributes[:'ColorScheme']
      end

      if attributes.has_key?(:'FontScheme')
        self.font_scheme = attributes[:'FontScheme']
      end

      if attributes.has_key?(:'FormatScheme')
        self.format_scheme = attributes[:'FormatScheme']
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
          name == o.name &&
          color_scheme == o.color_scheme &&
          font_scheme == o.font_scheme &&
          format_scheme == o.format_scheme
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, color_scheme, font_scheme, format_scheme].hash
    end
  end
end
