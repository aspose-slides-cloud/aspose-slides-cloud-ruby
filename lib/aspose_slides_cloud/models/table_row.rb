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
  # Table Row.
  class TableRow < BaseObject
    # Cells for the row.
    attr_accessor :cells

    # Minimal height of the row.
    attr_accessor :minimal_height

    # Height of the row.
    attr_accessor :height

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cells' => :'Cells',
        :'minimal_height' => :'MinimalHeight',
        :'height' => :'Height',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cells' => :'Array<TableCell>',
        :'minimal_height' => :'Float',
        :'height' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Cells')
        if (value = attributes[:'Cells']).is_a?(Array)
          self.cells = value
        end
      end

      if attributes.has_key?(:'MinimalHeight')
        self.minimal_height = attributes[:'MinimalHeight']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @minimal_height.nil?
        invalid_properties.push('invalid value for "minimal_height", minimal_height cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @minimal_height.nil?
      return false if @height.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cells == o.cells &&
          minimal_height == o.minimal_height &&
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
      [cells, minimal_height, height].hash
    end
  end
end
