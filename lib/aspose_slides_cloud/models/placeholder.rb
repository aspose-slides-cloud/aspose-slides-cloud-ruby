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
  # Represents placeholder
  class Placeholder < ResourceBase
    # Index.
    attr_accessor :index

    # Orientation.
    attr_accessor :orientation

    # Size.
    attr_accessor :size

    # Placeholder type.
    attr_accessor :type

    # Shape link.
    attr_accessor :shape

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'index' => :'Index',
        :'orientation' => :'Orientation',
        :'size' => :'Size',
        :'type' => :'Type',
        :'shape' => :'Shape',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'index' => :'Integer',
        :'orientation' => :'String',
        :'size' => :'String',
        :'type' => :'String',
        :'shape' => :'ResourceUri',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Index')
        self.index = attributes[:'Index']
      end

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'Size')
        self.size = attributes[:'Size']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'Shape')
        self.shape = attributes[:'Shape']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @index.nil?
        invalid_properties.push('invalid value for "index", index cannot be nil.')
      end

      if @orientation.nil?
        invalid_properties.push('invalid value for "orientation", orientation cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @index.nil?
      return false if @orientation.nil?
      orientation_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      return false unless orientation_validator.valid?(@orientation)
      return false if @size.nil?
      size_validator = EnumAttributeValidator.new('String', ['Full', 'Half', 'Quarter'])
      return false unless size_validator.valid?(@size)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['Title', 'Body', 'CenteredTitle', 'Subtitle', 'DateAndTime', 'SlideNumber', 'Footer', 'Header', 'Object', 'Chart', 'Table', 'ClipArt', 'Diagram', 'Media', 'SlideImage', 'Picture'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation Object to be assigned
    def orientation=(orientation)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      unless validator.valid?(orientation)
        fail ArgumentError, 'invalid value for "orientation", must be one of #{validator.allowable_values}.'
      end
      @orientation = orientation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] size Object to be assigned
    def size=(size)
      validator = EnumAttributeValidator.new('String', ['Full', 'Half', 'Quarter'])
      unless validator.valid?(size)
        fail ArgumentError, 'invalid value for "size", must be one of #{validator.allowable_values}.'
      end
      @size = size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Title', 'Body', 'CenteredTitle', 'Subtitle', 'DateAndTime', 'SlideNumber', 'Footer', 'Header', 'Object', 'Chart', 'Table', 'ClipArt', 'Diagram', 'Media', 'SlideImage', 'Picture'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          index == o.index &&
          orientation == o.orientation &&
          size == o.size &&
          type == o.type &&
          shape == o.shape
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, index, orientation, size, type, shape].hash
    end
  end
end
