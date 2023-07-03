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
  # Represents GeometryPath of the shape
  class GeometryPath < BaseObject
    # Path fill mode
    attr_accessor :fill_mode

    # Stroke
    attr_accessor :stroke

    # List of PathSegmen objects
    attr_accessor :path_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'fill_mode' => :'FillMode',
        :'stroke' => :'Stroke',
        :'path_data' => :'PathData',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'fill_mode' => :'String',
        :'stroke' => :'BOOLEAN',
        :'path_data' => :'Array<PathSegment>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'FillMode')
        self.fill_mode = attributes[:'FillMode']
      end

      if attributes.has_key?(:'Stroke')
        self.stroke = attributes[:'Stroke']
      end

      if attributes.has_key?(:'PathData')
        if (value = attributes[:'PathData']).is_a?(Array)
          self.path_data = value
        end
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
      fill_mode_validator = EnumAttributeValidator.new('String', ['None', 'Normal', 'Lighten', 'LightenLess', 'Darken', 'DarkenLess'])
      return false unless fill_mode_validator.valid?(@fill_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fill_mode Object to be assigned
    def fill_mode=(fill_mode)
      validator = EnumAttributeValidator.new('String', ['None', 'Normal', 'Lighten', 'LightenLess', 'Darken', 'DarkenLess'])
      unless validator.valid?(fill_mode)
        fail ArgumentError, 'invalid value for "fill_mode", must be one of #{validator.allowable_values}.'
      end
      @fill_mode = fill_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fill_mode == o.fill_mode &&
          stroke == o.stroke &&
          path_data == o.path_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fill_mode, stroke, path_data].hash
    end
  end
end
