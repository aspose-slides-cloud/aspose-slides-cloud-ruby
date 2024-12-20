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
  # Represents AutoShape resource.
  class Shape < GeometryShape
    # Gets or sets the text.
    attr_accessor :text

    # Get or sets list to paragraphs list
    attr_accessor :paragraphs

    # Returns TextFrame's formatting properties.
    attr_accessor :text_frame_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'text' => :'Text',
        :'paragraphs' => :'Paragraphs',
        :'text_frame_format' => :'TextFrameFormat',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'text' => :'String',
        :'paragraphs' => :'Array<Paragraph>',
        :'text_frame_format' => :'TextFrameFormat',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.has_key?(:'Paragraphs')
        if (value = attributes[:'Paragraphs']).is_a?(Array)
          self.paragraphs = value
        end
      end

      if attributes.has_key?(:'TextFrameFormat')
        self.text_frame_format = attributes[:'TextFrameFormat']
      end
      self.type = 'Shape'
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
          name == o.name &&
          width == o.width &&
          height == o.height &&
          alternative_text == o.alternative_text &&
          alternative_text_title == o.alternative_text_title &&
          hidden == o.hidden &&
          is_decorative == o.is_decorative &&
          x == o.x &&
          y == o.y &&
          z_order_position == o.z_order_position &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          hyperlink_click == o.hyperlink_click &&
          hyperlink_mouse_over == o.hyperlink_mouse_over &&
          type == o.type &&
          shape_type == o.shape_type &&
          text == o.text &&
          paragraphs == o.paragraphs &&
          text_frame_format == o.text_frame_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, is_decorative, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, shape_type, text, paragraphs, text_frame_format].hash
    end
  end
end
