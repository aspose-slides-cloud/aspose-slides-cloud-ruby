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
  # Represents a Fill Overlay effect. A fill overlay may be used to specify an additional fill for an object and blend the two fills together.
  class FillOverlayImageEffect < ImageTransformEffect
    # FillBlendMode.
    attr_accessor :blend

    # Fill format.
    attr_accessor :fill_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'blend' => :'Blend',
        :'fill_format' => :'FillFormat',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'blend' => :'String',
        :'fill_format' => :'FillFormat',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Blend')
        self.blend = attributes[:'Blend']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end
      self.type = 'FillOverlay'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @blend.nil?
        invalid_properties.push('invalid value for "blend", blend cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @blend.nil?
      blend_validator = EnumAttributeValidator.new('String', ['Darken', 'Lighten', 'Multiply', 'Overlay', 'Screen'])
      return false unless blend_validator.valid?(@blend)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blend Object to be assigned
    def blend=(blend)
      validator = EnumAttributeValidator.new('String', ['Darken', 'Lighten', 'Multiply', 'Overlay', 'Screen'])
      unless validator.valid?(blend)
        fail ArgumentError, 'invalid value for "blend", must be one of #{validator.allowable_values}.'
      end
      @blend = blend
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          blend == o.blend &&
          fill_format == o.fill_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, blend, fill_format].hash
    end
  end
end
