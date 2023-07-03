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
  # Represents chart category resource
  class ChartCategory < BaseObject
    # Gets or sets the parent categories. Used with Sunburst &amp; treemap categories; ignored for other chart types.
    attr_accessor :parent_categories

    # Gets or sets the grouping level for the category. Used with Sunburst &amp; treemap categories; ignored for other chart types.
    attr_accessor :level

    # Category value
    attr_accessor :value

    # Get or sets the fill format.
    attr_accessor :fill_format

    # Get or sets the effect format.
    attr_accessor :effect_format

    # Get or sets the line format.
    attr_accessor :line_format

    # Gets or sets the data points for chart data
    attr_accessor :data_points

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'parent_categories' => :'ParentCategories',
        :'level' => :'Level',
        :'value' => :'Value',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_points' => :'DataPoints',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'parent_categories' => :'Array<String>',
        :'level' => :'Integer',
        :'value' => :'String',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_points' => :'Array<OneValueChartDataPoint>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ParentCategories')
        if (value = attributes[:'ParentCategories']).is_a?(Array)
          self.parent_categories = value
        end
      end

      if attributes.has_key?(:'Level')
        self.level = attributes[:'Level']
      end

      if attributes.has_key?(:'Value')
        self.value = attributes[:'Value']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'EffectFormat')
        self.effect_format = attributes[:'EffectFormat']
      end

      if attributes.has_key?(:'LineFormat')
        self.line_format = attributes[:'LineFormat']
      end

      if attributes.has_key?(:'DataPoints')
        if (value = attributes[:'DataPoints']).is_a?(Array)
          self.data_points = value
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          parent_categories == o.parent_categories &&
          level == o.level &&
          value == o.value &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          data_points == o.data_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [parent_categories, level, value, fill_format, effect_format, line_format, data_points].hash
    end
  end
end
