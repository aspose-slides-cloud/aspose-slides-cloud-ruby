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
  # Represents header/footer info of slide
  class HeaderFooter < ResourceBase
    # True if date is displayed in the footer
    attr_accessor :is_date_time_visible

    # Text to be displayed as date in the footer
    attr_accessor :date_time_text

    # True if footer is displayed
    attr_accessor :is_footer_visible

    # Text to be displayed in the footer
    attr_accessor :footer_text

    # True if slide number is displayed in the footer
    attr_accessor :is_slide_number_visible

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'is_date_time_visible' => :'IsDateTimeVisible',
        :'date_time_text' => :'DateTimeText',
        :'is_footer_visible' => :'IsFooterVisible',
        :'footer_text' => :'FooterText',
        :'is_slide_number_visible' => :'IsSlideNumberVisible',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'is_date_time_visible' => :'BOOLEAN',
        :'date_time_text' => :'String',
        :'is_footer_visible' => :'BOOLEAN',
        :'footer_text' => :'String',
        :'is_slide_number_visible' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'IsDateTimeVisible')
        self.is_date_time_visible = attributes[:'IsDateTimeVisible']
      end

      if attributes.has_key?(:'DateTimeText')
        self.date_time_text = attributes[:'DateTimeText']
      end

      if attributes.has_key?(:'IsFooterVisible')
        self.is_footer_visible = attributes[:'IsFooterVisible']
      end

      if attributes.has_key?(:'FooterText')
        self.footer_text = attributes[:'FooterText']
      end

      if attributes.has_key?(:'IsSlideNumberVisible')
        self.is_slide_number_visible = attributes[:'IsSlideNumberVisible']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          is_date_time_visible == o.is_date_time_visible &&
          date_time_text == o.date_time_text &&
          is_footer_visible == o.is_footer_visible &&
          footer_text == o.footer_text &&
          is_slide_number_visible == o.is_slide_number_visible
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, is_date_time_visible, date_time_text, is_footer_visible, footer_text, is_slide_number_visible].hash
    end
  end
end
