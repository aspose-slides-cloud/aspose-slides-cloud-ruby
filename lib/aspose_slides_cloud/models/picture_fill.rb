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

    # The horizontal offset of the texture from the shape's origin in points. A positive value moves the texture to the right, while a negative value moves it to the left.
    attr_accessor :tile_offset_x

    # The vertical offset of the texture from the shape's origin in points. A positive value moves the texture down, while a negative value moves it up.
    attr_accessor :tile_offset_y

    # The horizontal scale for the texture fill as a percentage.
    attr_accessor :tile_scale_x

    # The vertical scale for the texture fill as a percentage.
    attr_accessor :tile_scale_y

    # The way texture is aligned within the shape. This setting controls the starting point of the texture pattern and how it repeats across the shape.
    attr_accessor :tile_alignment

    # Flips the texture tile around its horizontal, vertical or both axis.
    attr_accessor :tile_flip

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
        :'tile_offset_x' => :'TileOffsetX',
        :'tile_offset_y' => :'TileOffsetY',
        :'tile_scale_x' => :'TileScaleX',
        :'tile_scale_y' => :'TileScaleY',
        :'tile_alignment' => :'TileAlignment',
        :'tile_flip' => :'TileFlip',
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
        :'tile_offset_x' => :'Float',
        :'tile_offset_y' => :'Float',
        :'tile_scale_x' => :'Float',
        :'tile_scale_y' => :'Float',
        :'tile_alignment' => :'String',
        :'tile_flip' => :'String',
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

      if attributes.has_key?(:'TileOffsetX')
        self.tile_offset_x = attributes[:'TileOffsetX']
      end

      if attributes.has_key?(:'TileOffsetY')
        self.tile_offset_y = attributes[:'TileOffsetY']
      end

      if attributes.has_key?(:'TileScaleX')
        self.tile_scale_x = attributes[:'TileScaleX']
      end

      if attributes.has_key?(:'TileScaleY')
        self.tile_scale_y = attributes[:'TileScaleY']
      end

      if attributes.has_key?(:'TileAlignment')
        self.tile_alignment = attributes[:'TileAlignment']
      end

      if attributes.has_key?(:'TileFlip')
        self.tile_flip = attributes[:'TileFlip']
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
      tile_alignment_validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Left', 'Center', 'Right', 'BottomLeft', 'Bottom', 'BottomRight', 'NotDefined'])
      return false unless tile_alignment_validator.valid?(@tile_alignment)
      tile_flip_validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      return false unless tile_flip_validator.valid?(@tile_flip)
      return false if @picture_fill_mode.nil?
      picture_fill_mode_validator = EnumAttributeValidator.new('String', ['Tile', 'Stretch'])
      return false unless picture_fill_mode_validator.valid?(@picture_fill_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tile_alignment Object to be assigned
    def tile_alignment=(tile_alignment)
      validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Left', 'Center', 'Right', 'BottomLeft', 'Bottom', 'BottomRight', 'NotDefined'])
      unless validator.valid?(tile_alignment)
        fail ArgumentError, 'invalid value for "tile_alignment", must be one of #{validator.allowable_values}.'
      end
      @tile_alignment = tile_alignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tile_flip Object to be assigned
    def tile_flip=(tile_flip)
      validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      unless validator.valid?(tile_flip)
        fail ArgumentError, 'invalid value for "tile_flip", must be one of #{validator.allowable_values}.'
      end
      @tile_flip = tile_flip
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
          tile_offset_x == o.tile_offset_x &&
          tile_offset_y == o.tile_offset_y &&
          tile_scale_x == o.tile_scale_x &&
          tile_scale_y == o.tile_scale_y &&
          tile_alignment == o.tile_alignment &&
          tile_flip == o.tile_flip &&
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
      [type, crop_bottom, crop_left, crop_right, crop_top, dpi, tile_offset_x, tile_offset_y, tile_scale_x, tile_scale_y, tile_alignment, tile_flip, image, base64_data, svg_data, picture_fill_mode, image_transform_list].hash
    end
  end
end
