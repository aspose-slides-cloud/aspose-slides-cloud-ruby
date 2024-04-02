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
  # Save slide task.
  class SaveSlide < Task
    # Output to save the slide to.
    attr_accessor :output

    # Save format.
    attr_accessor :format

    # Save options.
    attr_accessor :options

    # Result width for saving to an image format.
    attr_accessor :width

    # Result height for saving to an image format.
    attr_accessor :height

    # Slide index.
    attr_accessor :position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'output' => :'Output',
        :'format' => :'Format',
        :'options' => :'Options',
        :'width' => :'Width',
        :'height' => :'Height',
        :'position' => :'Position',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'output' => :'OutputFile',
        :'format' => :'String',
        :'options' => :'ExportOptions',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'position' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Output')
        self.output = attributes[:'Output']
      end

      if attributes.has_key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.has_key?(:'Options')
        self.options = attributes[:'Options']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end
      self.type = 'SaveSlide'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @format.nil?
        invalid_properties.push('invalid value for "format", format cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @format.nil?
      format_validator = EnumAttributeValidator.new('String', ['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp', 'Xaml', 'Html5', 'Md'])
      return false unless format_validator.valid?(@format)
      return false if @position.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp', 'Xaml', 'Html5', 'Md'])
      unless validator.valid?(format)
        fail ArgumentError, 'invalid value for "format", must be one of #{validator.allowable_values}.'
      end
      @format = format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          output == o.output &&
          format == o.format &&
          options == o.options &&
          width == o.width &&
          height == o.height &&
          position == o.position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, output, format, options, width, height, position].hash
    end
  end
end
