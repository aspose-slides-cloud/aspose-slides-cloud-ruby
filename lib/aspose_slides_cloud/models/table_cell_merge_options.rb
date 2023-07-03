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
  # Table cells merge options
  class TableCellMergeOptions < BaseObject
    # Row index of the first cell
    attr_accessor :first_row_index

    # First cell index in the row
    attr_accessor :first_cell_index

    # Row index of the last cell
    attr_accessor :last_row_index

    # Last cell index in the row
    attr_accessor :last_cell_index

    # Allow splitting
    attr_accessor :allow_splitting

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_row_index' => :'FirstRowIndex',
        :'first_cell_index' => :'FirstCellIndex',
        :'last_row_index' => :'LastRowIndex',
        :'last_cell_index' => :'LastCellIndex',
        :'allow_splitting' => :'AllowSplitting',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'first_row_index' => :'Integer',
        :'first_cell_index' => :'Integer',
        :'last_row_index' => :'Integer',
        :'last_cell_index' => :'Integer',
        :'allow_splitting' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'FirstRowIndex')
        self.first_row_index = attributes[:'FirstRowIndex']
      end

      if attributes.has_key?(:'FirstCellIndex')
        self.first_cell_index = attributes[:'FirstCellIndex']
      end

      if attributes.has_key?(:'LastRowIndex')
        self.last_row_index = attributes[:'LastRowIndex']
      end

      if attributes.has_key?(:'LastCellIndex')
        self.last_cell_index = attributes[:'LastCellIndex']
      end

      if attributes.has_key?(:'AllowSplitting')
        self.allow_splitting = attributes[:'AllowSplitting']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_row_index.nil?
        invalid_properties.push('invalid value for "first_row_index", first_row_index cannot be nil.')
      end

      if @first_cell_index.nil?
        invalid_properties.push('invalid value for "first_cell_index", first_cell_index cannot be nil.')
      end

      if @last_row_index.nil?
        invalid_properties.push('invalid value for "last_row_index", last_row_index cannot be nil.')
      end

      if @last_cell_index.nil?
        invalid_properties.push('invalid value for "last_cell_index", last_cell_index cannot be nil.')
      end

      if @allow_splitting.nil?
        invalid_properties.push('invalid value for "allow_splitting", allow_splitting cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_row_index.nil?
      return false if @first_cell_index.nil?
      return false if @last_row_index.nil?
      return false if @last_cell_index.nil?
      return false if @allow_splitting.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_row_index == o.first_row_index &&
          first_cell_index == o.first_cell_index &&
          last_row_index == o.last_row_index &&
          last_cell_index == o.last_cell_index &&
          allow_splitting == o.allow_splitting
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [first_row_index, first_cell_index, last_row_index, last_cell_index, allow_splitting].hash
    end
  end
end
