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
  # ShapeBevel
  class ShapeBevel < BaseObject
    # Bevel type
    attr_accessor :bevel_type

    # Bevel width
    attr_accessor :width

    # Bevel height
    attr_accessor :height

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bevel_type' => :'BevelType',
        :'width' => :'Width',
        :'height' => :'Height',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bevel_type' => :'String',
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

      if attributes.has_key?(:'BevelType')
        self.bevel_type = attributes[:'BevelType']
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      bevel_type_validator = EnumAttributeValidator.new('String', ['Angle', 'ArtDeco', 'Circle', 'Convex', 'CoolSlant', 'Cross', 'Divot', 'HardEdge', 'RelaxedInset', 'Riblet', 'Slope', 'SoftRound', 'NotDefined'])
      return false unless bevel_type_validator.valid?(@bevel_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bevel_type Object to be assigned
    def bevel_type=(bevel_type)
      validator = EnumAttributeValidator.new('String', ['Angle', 'ArtDeco', 'Circle', 'Convex', 'CoolSlant', 'Cross', 'Divot', 'HardEdge', 'RelaxedInset', 'Riblet', 'Slope', 'SoftRound', 'NotDefined'])
      unless validator.valid?(bevel_type)
        fail ArgumentError, 'invalid value for "bevel_type", must be one of #{validator.allowable_values}.'
      end
      @bevel_type = bevel_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bevel_type == o.bevel_type &&
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
      [bevel_type, width, height].hash
    end
  end
end
