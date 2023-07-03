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
  # Represents Excel spreadsheet data source.
  class Workbook < DataSource
    # Worksheet index.
    attr_accessor :worksheet_index

    # Column index of the first value.
    attr_accessor :column_index

    # Row index of the first value.
    attr_accessor :row_index

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'worksheet_index' => :'WorksheetIndex',
        :'column_index' => :'ColumnIndex',
        :'row_index' => :'RowIndex',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'worksheet_index' => :'Integer',
        :'column_index' => :'Integer',
        :'row_index' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'WorksheetIndex')
        self.worksheet_index = attributes[:'WorksheetIndex']
      end

      if attributes.has_key?(:'ColumnIndex')
        self.column_index = attributes[:'ColumnIndex']
      end

      if attributes.has_key?(:'RowIndex')
        self.row_index = attributes[:'RowIndex']
      end
      self.type = 'Workbook'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @worksheet_index.nil?
        invalid_properties.push('invalid value for "worksheet_index", worksheet_index cannot be nil.')
      end

      if @column_index.nil?
        invalid_properties.push('invalid value for "column_index", column_index cannot be nil.')
      end

      if @row_index.nil?
        invalid_properties.push('invalid value for "row_index", row_index cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @worksheet_index.nil?
      return false if @column_index.nil?
      return false if @row_index.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          worksheet_index == o.worksheet_index &&
          column_index == o.column_index &&
          row_index == o.row_index
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, worksheet_index, column_index, row_index].hash
    end
  end
end
