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
  # Slides layouting options.
  class SlidesLayoutOptions < BaseObject
    attr_accessor :layout_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'layout_type' => :'LayoutType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'layout_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'LayoutType')
        self.layout_type = attributes[:'LayoutType']
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
      layout_type_validator = EnumAttributeValidator.new('String', ['NotesComments', 'Handout'])
      return false unless layout_type_validator.valid?(@layout_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] layout_type Object to be assigned
    def layout_type=(layout_type)
      validator = EnumAttributeValidator.new('String', ['NotesComments', 'Handout'])
      unless validator.valid?(layout_type)
        fail ArgumentError, 'invalid value for "layout_type", must be one of #{validator.allowable_values}.'
      end
      @layout_type = layout_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          layout_type == o.layout_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [layout_type].hash
    end
  end
end
