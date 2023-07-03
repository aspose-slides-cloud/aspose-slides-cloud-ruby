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
  # Quadratic Bezier curve segment of the geometry path
  class QuadraticBezierToPathSegment < PathSegment
    # X coordinate of direction point
    attr_accessor :x1

    # Y coordinate of direction point
    attr_accessor :y1

    # X coordinate of end point
    attr_accessor :x2

    # Y coordinate of end point
    attr_accessor :y2

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'x1' => :'X1',
        :'y1' => :'Y1',
        :'x2' => :'X2',
        :'y2' => :'Y2',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'x1' => :'Float',
        :'y1' => :'Float',
        :'x2' => :'Float',
        :'y2' => :'Float',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'X1')
        self.x1 = attributes[:'X1']
      end

      if attributes.has_key?(:'Y1')
        self.y1 = attributes[:'Y1']
      end

      if attributes.has_key?(:'X2')
        self.x2 = attributes[:'X2']
      end

      if attributes.has_key?(:'Y2')
        self.y2 = attributes[:'Y2']
      end
      self.type = 'QuadBezierTo'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @x1.nil?
        invalid_properties.push('invalid value for "x1", x1 cannot be nil.')
      end

      if @y1.nil?
        invalid_properties.push('invalid value for "y1", y1 cannot be nil.')
      end

      if @x2.nil?
        invalid_properties.push('invalid value for "x2", x2 cannot be nil.')
      end

      if @y2.nil?
        invalid_properties.push('invalid value for "y2", y2 cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @x1.nil?
      return false if @y1.nil?
      return false if @x2.nil?
      return false if @y2.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          x1 == o.x1 &&
          y1 == o.y1 &&
          x2 == o.x2 &&
          y2 == o.y2
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, x1, y1, x2, y2].hash
    end
  end
end
