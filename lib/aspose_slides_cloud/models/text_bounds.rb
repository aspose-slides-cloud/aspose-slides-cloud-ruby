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
  # Represents text bounds within a paragraph or portion.
  class TextBounds < BaseObject
    # X coordinate of the text bounds.
    attr_accessor :x

    # X coordinate of the text bounds.             
    attr_accessor :y

    # Width of the text bounds.
    attr_accessor :width

    # Height of the text bounds.
    attr_accessor :height

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'x' => :'X',
        :'y' => :'Y',
        :'width' => :'Width',
        :'height' => :'Height',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'x' => :'Float',
        :'y' => :'Float',
        :'width' => :'Float',
        :'height' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'X')
        self.x = attributes[:'X']
      end

      if attributes.has_key?(:'Y')
        self.y = attributes[:'Y']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @x.nil?
        invalid_properties.push('invalid value for "x", x cannot be nil.')
      end

      if @y.nil?
        invalid_properties.push('invalid value for "y", y cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @x.nil?
      return false if @y.nil?
      return false if @width.nil?
      return false if @height.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          x == o.x &&
          y == o.y &&
          width == o.width &&
          height == o.height
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [x, y, width, height].hash
    end
  end
end
