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
  # Picture fill.
  class PictureFill < FillFormat
    # Percentage of image height that is cropped from the bottom.
    attr_accessor :crop_bottom

    # Percentage of image height that is cropped from the left.
    attr_accessor :crop_left

    # Percentage of image height that is cropped from the right.
    attr_accessor :crop_right

    # Percentage of image height that is cropped from the top.
    attr_accessor :crop_top

    # Picture resolution.
    attr_accessor :dpi

    # Internal image link.
    attr_accessor :image

    # Base 64 image data.
    attr_accessor :base64_data

    # SVG image data.
    attr_accessor :svg_data

    # Fill mode.
    attr_accessor :picture_fill_mode

    # Image transform effects.
    attr_accessor :image_transform_list

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'crop_bottom' => :'CropBottom',
        :'crop_left' => :'CropLeft',
        :'crop_right' => :'CropRight',
        :'crop_top' => :'CropTop',
        :'dpi' => :'Dpi',
        :'image' => :'Image',
        :'base64_data' => :'Base64Data',
        :'svg_data' => :'SvgData',
        :'picture_fill_mode' => :'PictureFillMode',
        :'image_transform_list' => :'ImageTransformList',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'crop_bottom' => :'Float',
        :'crop_left' => :'Float',
        :'crop_right' => :'Float',
        :'crop_top' => :'Float',
        :'dpi' => :'Integer',
        :'image' => :'ResourceUri',
        :'base64_data' => :'String',
        :'svg_data' => :'String',
        :'picture_fill_mode' => :'String',
        :'image_transform_list' => :'Array<ImageTransformEffect>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'CropBottom')
        self.crop_bottom = attributes[:'CropBottom']
      end

      if attributes.has_key?(:'CropLeft')
        self.crop_left = attributes[:'CropLeft']
      end

      if attributes.has_key?(:'CropRight')
        self.crop_right = attributes[:'CropRight']
      end

      if attributes.has_key?(:'CropTop')
        self.crop_top = attributes[:'CropTop']
      end

      if attributes.has_key?(:'Dpi')
        self.dpi = attributes[:'Dpi']
      end

      if attributes.has_key?(:'Image')
        self.image = attributes[:'Image']
      end

      if attributes.has_key?(:'Base64Data')
        self.base64_data = attributes[:'Base64Data']
      end

      if attributes.has_key?(:'SvgData')
        self.svg_data = attributes[:'SvgData']
      end

      if attributes.has_key?(:'PictureFillMode')
        self.picture_fill_mode = attributes[:'PictureFillMode']
      end

      if attributes.has_key?(:'ImageTransformList')
        if (value = attributes[:'ImageTransformList']).is_a?(Array)
          self.image_transform_list = value
        end
      end
      self.type = 'Picture'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @crop_bottom.nil?
        invalid_properties.push('invalid value for "crop_bottom", crop_bottom cannot be nil.')
      end

      if @crop_left.nil?
        invalid_properties.push('invalid value for "crop_left", crop_left cannot be nil.')
      end

      if @crop_right.nil?
        invalid_properties.push('invalid value for "crop_right", crop_right cannot be nil.')
      end

      if @crop_top.nil?
        invalid_properties.push('invalid value for "crop_top", crop_top cannot be nil.')
      end

      if @dpi.nil?
        invalid_properties.push('invalid value for "dpi", dpi cannot be nil.')
      end

      if @picture_fill_mode.nil?
        invalid_properties.push('invalid value for "picture_fill_mode", picture_fill_mode cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @crop_bottom.nil?
      return false if @crop_left.nil?
      return false if @crop_right.nil?
      return false if @crop_top.nil?
      return false if @dpi.nil?
      return false if @picture_fill_mode.nil?
      picture_fill_mode_validator = EnumAttributeValidator.new('String', ['Tile', 'Stretch'])
      return false unless picture_fill_mode_validator.valid?(@picture_fill_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] picture_fill_mode Object to be assigned
    def picture_fill_mode=(picture_fill_mode)
      validator = EnumAttributeValidator.new('String', ['Tile', 'Stretch'])
      unless validator.valid?(picture_fill_mode)
        fail ArgumentError, 'invalid value for "picture_fill_mode", must be one of #{validator.allowable_values}.'
      end
      @picture_fill_mode = picture_fill_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          crop_bottom == o.crop_bottom &&
          crop_left == o.crop_left &&
          crop_right == o.crop_right &&
          crop_top == o.crop_top &&
          dpi == o.dpi &&
          image == o.image &&
          base64_data == o.base64_data &&
          svg_data == o.svg_data &&
          picture_fill_mode == o.picture_fill_mode &&
          image_transform_list == o.image_transform_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, crop_bottom, crop_left, crop_right, crop_top, dpi, image, base64_data, svg_data, picture_fill_mode, image_transform_list].hash
    end
  end
end
