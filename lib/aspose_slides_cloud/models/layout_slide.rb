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
  # Layout slide.
  class LayoutSlide < ResourceBase
    # Name.
    attr_accessor :name

    # Layout slide type.
    attr_accessor :type

    # Master slide link.
    attr_accessor :master_slide

    # List of depending slides.
    attr_accessor :depending_slides

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'name' => :'Name',
        :'type' => :'Type',
        :'master_slide' => :'MasterSlide',
        :'depending_slides' => :'DependingSlides',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'name' => :'String',
        :'type' => :'String',
        :'master_slide' => :'ResourceUri',
        :'depending_slides' => :'Array<ResourceUri>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'MasterSlide')
        self.master_slide = attributes[:'MasterSlide']
      end

      if attributes.has_key?(:'DependingSlides')
        if (value = attributes[:'DependingSlides']).is_a?(Array)
          self.depending_slides = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['Title', 'Text', 'TwoColumnText', 'Table', 'TextAndChart', 'ChartAndText', 'Diagram', 'Chart', 'TextAndClipArt', 'ClipArtAndText', 'TitleOnly', 'Blank', 'TextAndObject', 'ObjectAndText', 'Object', 'TitleAndObject', 'TextAndMedia', 'MediaAndText', 'ObjectOverText', 'TextOverObject', 'TextAndTwoObjects', 'TwoObjectsAndText', 'TwoObjectsOverText', 'FourObjects', 'VerticalText', 'ClipArtAndVerticalText', 'VerticalTitleAndText', 'VerticalTitleAndTextOverChart', 'TwoObjects', 'ObjectAndTwoObject', 'TwoObjectsAndObject', 'SectionHeader', 'TwoTextAndTwoObjects', 'TitleObjectAndCaption', 'PictureAndCaption', 'Custom'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Title', 'Text', 'TwoColumnText', 'Table', 'TextAndChart', 'ChartAndText', 'Diagram', 'Chart', 'TextAndClipArt', 'ClipArtAndText', 'TitleOnly', 'Blank', 'TextAndObject', 'ObjectAndText', 'Object', 'TitleAndObject', 'TextAndMedia', 'MediaAndText', 'ObjectOverText', 'TextOverObject', 'TextAndTwoObjects', 'TwoObjectsAndText', 'TwoObjectsOverText', 'FourObjects', 'VerticalText', 'ClipArtAndVerticalText', 'VerticalTitleAndText', 'VerticalTitleAndTextOverChart', 'TwoObjects', 'ObjectAndTwoObject', 'TwoObjectsAndObject', 'SectionHeader', 'TwoTextAndTwoObjects', 'TitleObjectAndCaption', 'PictureAndCaption', 'Custom'])
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
          name == o.name &&
          type == o.type &&
          master_slide == o.master_slide &&
          depending_slides == o.depending_slides
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, type, master_slide, depending_slides].hash
    end
  end
end
