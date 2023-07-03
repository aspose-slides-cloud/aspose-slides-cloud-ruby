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
  # Represents chart axes
  class Axes < BaseObject
    # Gets or sets the horizontal axis.
    attr_accessor :horizontal_axis

    # Gets or sets the vertical axis.
    attr_accessor :vertical_axis

    # Gets or sets the secondary horizontal axis.
    attr_accessor :secondary_horizontal_axis

    # Gets or sets the secondary vertical axis.
    attr_accessor :secondary_vertical_axis

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'horizontal_axis' => :'HorizontalAxis',
        :'vertical_axis' => :'VerticalAxis',
        :'secondary_horizontal_axis' => :'SecondaryHorizontalAxis',
        :'secondary_vertical_axis' => :'SecondaryVerticalAxis',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'horizontal_axis' => :'Axis',
        :'vertical_axis' => :'Axis',
        :'secondary_horizontal_axis' => :'Axis',
        :'secondary_vertical_axis' => :'Axis',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'HorizontalAxis')
        self.horizontal_axis = attributes[:'HorizontalAxis']
      end

      if attributes.has_key?(:'VerticalAxis')
        self.vertical_axis = attributes[:'VerticalAxis']
      end

      if attributes.has_key?(:'SecondaryHorizontalAxis')
        self.secondary_horizontal_axis = attributes[:'SecondaryHorizontalAxis']
      end

      if attributes.has_key?(:'SecondaryVerticalAxis')
        self.secondary_vertical_axis = attributes[:'SecondaryVerticalAxis']
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
          horizontal_axis == o.horizontal_axis &&
          vertical_axis == o.vertical_axis &&
          secondary_horizontal_axis == o.secondary_horizontal_axis &&
          secondary_vertical_axis == o.secondary_vertical_axis
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [horizontal_axis, vertical_axis, secondary_horizontal_axis, secondary_vertical_axis].hash
    end
  end
end
