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
  # Provides options that control how a presentation is saved in PPTX format.
  class PptxExportOptions < ExportOptions
    # The conformance class to which the PresentationML document conforms.
    attr_accessor :conformance

    # Specifies whether the ZIP64 format is used for the Presentation document. The default value is Zip64Mode.IfNecessary.
    attr_accessor :zip64_mode

    # True to refresh the presentation thumbnail on save
    attr_accessor :refresh_thumbnail

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'conformance' => :'Conformance',
        :'zip64_mode' => :'Zip64Mode',
        :'refresh_thumbnail' => :'RefreshThumbnail',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'conformance' => :'String',
        :'zip64_mode' => :'String',
        :'refresh_thumbnail' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Conformance')
        self.conformance = attributes[:'Conformance']
      end

      if attributes.has_key?(:'Zip64Mode')
        self.zip64_mode = attributes[:'Zip64Mode']
      end

      if attributes.has_key?(:'RefreshThumbnail')
        self.refresh_thumbnail = attributes[:'RefreshThumbnail']
      end
      self.format = 'pptx'
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
      conformance_validator = EnumAttributeValidator.new('String', ['Ecma376', 'Iso29500Transitional', 'Iso29500Strict'])
      return false unless conformance_validator.valid?(@conformance)
      zip64_mode_validator = EnumAttributeValidator.new('String', ['Never', 'IfNecessary', 'Always'])
      return false unless zip64_mode_validator.valid?(@zip64_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] conformance Object to be assigned
    def conformance=(conformance)
      validator = EnumAttributeValidator.new('String', ['Ecma376', 'Iso29500Transitional', 'Iso29500Strict'])
      unless validator.valid?(conformance)
        fail ArgumentError, 'invalid value for "conformance", must be one of #{validator.allowable_values}.'
      end
      @conformance = conformance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] zip64_mode Object to be assigned
    def zip64_mode=(zip64_mode)
      validator = EnumAttributeValidator.new('String', ['Never', 'IfNecessary', 'Always'])
      unless validator.valid?(zip64_mode)
        fail ArgumentError, 'invalid value for "zip64_mode", must be one of #{validator.allowable_values}.'
      end
      @zip64_mode = zip64_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          delete_embedded_binary_objects == o.delete_embedded_binary_objects &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          skip_java_script_links == o.skip_java_script_links &&
          format == o.format &&
          conformance == o.conformance &&
          zip64_mode == o.zip64_mode &&
          refresh_thumbnail == o.refresh_thumbnail
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, delete_embedded_binary_objects, gradient_style, font_fallback_rules, font_subst_rules, skip_java_script_links, format, conformance, zip64_mode, refresh_thumbnail].hash
    end
  end
end
