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
  # Represents input document for pipeline.
  class Input < BaseObject
    # Get or sets template document. If property is null new empty presentation will be created.
    attr_accessor :template

    # Get or sets html data for generate new presentation.
    attr_accessor :html_data

    # Get or sets data for template engine.
    attr_accessor :template_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'template' => :'Template',
        :'html_data' => :'HtmlData',
        :'template_data' => :'TemplateData',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'template' => :'InputFile',
        :'html_data' => :'InputFile',
        :'template_data' => :'InputFile',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Template')
        self.template = attributes[:'Template']
      end

      if attributes.has_key?(:'HtmlData')
        self.html_data = attributes[:'HtmlData']
      end

      if attributes.has_key?(:'TemplateData')
        self.template_data = attributes[:'TemplateData']
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
          template == o.template &&
          html_data == o.html_data &&
          template_data == o.template_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [template, html_data, template_data].hash
    end
  end
end
