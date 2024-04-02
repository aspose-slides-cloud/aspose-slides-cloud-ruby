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
  class Save < Task
    # Format.
    attr_accessor :format

    # Output file.
    attr_accessor :output

    # Save options.
    attr_accessor :options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'format' => :'Format',
        :'output' => :'Output',
        :'options' => :'Options',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'format' => :'String',
        :'output' => :'OutputFile',
        :'options' => :'ExportOptions',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.has_key?(:'Output')
        self.output = attributes[:'Output']
      end

      if attributes.has_key?(:'Options')
        self.options = attributes[:'Options']
      end
      self.type = 'Save'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @format.nil?
        invalid_properties.push('invalid value for "format", format cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @format.nil?
      format_validator = EnumAttributeValidator.new('String', ['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md'])
      return false unless format_validator.valid?(@format)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md'])
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
          format == o.format &&
          output == o.output &&
          options == o.options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, format, output, options].hash
    end
  end
end
