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
  # Represents font fallback rule.             
  class FontFallbackRule < BaseObject
    # First index of continuous unicode range.
    attr_accessor :range_start_index

    # Last index of continuous unicode range.
    attr_accessor :range_end_index

    # List of fallback font links.
    attr_accessor :fallback_font_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'range_start_index' => :'RangeStartIndex',
        :'range_end_index' => :'RangeEndIndex',
        :'fallback_font_list' => :'FallbackFontList',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'range_start_index' => :'Integer',
        :'range_end_index' => :'Integer',
        :'fallback_font_list' => :'Array<String>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'RangeStartIndex')
        self.range_start_index = attributes[:'RangeStartIndex']
      end

      if attributes.has_key?(:'RangeEndIndex')
        self.range_end_index = attributes[:'RangeEndIndex']
      end

      if attributes.has_key?(:'FallbackFontList')
        if (value = attributes[:'FallbackFontList']).is_a?(Array)
          self.fallback_font_list = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @range_start_index.nil?
        invalid_properties.push('invalid value for "range_start_index", range_start_index cannot be nil.')
      end

      if @range_end_index.nil?
        invalid_properties.push('invalid value for "range_end_index", range_end_index cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @range_start_index.nil?
      return false if @range_end_index.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          range_start_index == o.range_start_index &&
          range_end_index == o.range_end_index &&
          fallback_font_list == o.fallback_font_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [range_start_index, range_end_index, fallback_font_list].hash
    end
  end
end
