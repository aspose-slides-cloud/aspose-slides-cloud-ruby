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
  # A set of properties specifying which access permissions should be granted when the document is opened with user access.
  class AccessPermissions < BaseObject
    # The user may print the document (possibly not at the highest quality level, depending on whether bit HighQualityPrint is also set).
    attr_accessor :print_document

    # The user may modify the contents of the document by operations other than those controlled by bits AddOrModifyFields, FillExistingFields, AssembleDocument.
    attr_accessor :modify_content

    # The user may copy or otherwise extract text and graphics from the document by operations other than that controlled by bit ExtractTextAndGraphics.
    attr_accessor :copy_text_and_graphics

    # The user may add or modify text annotations, fill in interactive form fields, and, if bit ModifyContent is also set, create or modify interactive form fields (including signature fields).
    attr_accessor :add_or_modify_fields

    # The user may fill in existing interactive form fields (including signature fields), even if bit AddOrModifyFields is clear.
    attr_accessor :fill_existing_fields

    # The user may extract text and graphics in support of accessibility to users with disabilities or for other purposes.
    attr_accessor :extract_text_and_graphics

    # The user may assemble the document (insert, rotate, or delete pages and create bookmarks or thumbnail images), even if bit ModifyContent is clear.
    attr_accessor :assemble_document

    # The user may print the document to a representation from which a faithful digital copy of the PDF content could be generated. When this bit is clear (and bit PrintDocument is set), printing is limited to a low-level representation of the appearance, possibly of degraded quality.
    attr_accessor :high_quality_print

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'print_document' => :'PrintDocument',
        :'modify_content' => :'ModifyContent',
        :'copy_text_and_graphics' => :'CopyTextAndGraphics',
        :'add_or_modify_fields' => :'AddOrModifyFields',
        :'fill_existing_fields' => :'FillExistingFields',
        :'extract_text_and_graphics' => :'ExtractTextAndGraphics',
        :'assemble_document' => :'AssembleDocument',
        :'high_quality_print' => :'HighQualityPrint',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'print_document' => :'BOOLEAN',
        :'modify_content' => :'BOOLEAN',
        :'copy_text_and_graphics' => :'BOOLEAN',
        :'add_or_modify_fields' => :'BOOLEAN',
        :'fill_existing_fields' => :'BOOLEAN',
        :'extract_text_and_graphics' => :'BOOLEAN',
        :'assemble_document' => :'BOOLEAN',
        :'high_quality_print' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'PrintDocument')
        self.print_document = attributes[:'PrintDocument']
      end

      if attributes.has_key?(:'ModifyContent')
        self.modify_content = attributes[:'ModifyContent']
      end

      if attributes.has_key?(:'CopyTextAndGraphics')
        self.copy_text_and_graphics = attributes[:'CopyTextAndGraphics']
      end

      if attributes.has_key?(:'AddOrModifyFields')
        self.add_or_modify_fields = attributes[:'AddOrModifyFields']
      end

      if attributes.has_key?(:'FillExistingFields')
        self.fill_existing_fields = attributes[:'FillExistingFields']
      end

      if attributes.has_key?(:'ExtractTextAndGraphics')
        self.extract_text_and_graphics = attributes[:'ExtractTextAndGraphics']
      end

      if attributes.has_key?(:'AssembleDocument')
        self.assemble_document = attributes[:'AssembleDocument']
      end

      if attributes.has_key?(:'HighQualityPrint')
        self.high_quality_print = attributes[:'HighQualityPrint']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @print_document.nil?
        invalid_properties.push('invalid value for "print_document", print_document cannot be nil.')
      end

      if @modify_content.nil?
        invalid_properties.push('invalid value for "modify_content", modify_content cannot be nil.')
      end

      if @copy_text_and_graphics.nil?
        invalid_properties.push('invalid value for "copy_text_and_graphics", copy_text_and_graphics cannot be nil.')
      end

      if @add_or_modify_fields.nil?
        invalid_properties.push('invalid value for "add_or_modify_fields", add_or_modify_fields cannot be nil.')
      end

      if @fill_existing_fields.nil?
        invalid_properties.push('invalid value for "fill_existing_fields", fill_existing_fields cannot be nil.')
      end

      if @extract_text_and_graphics.nil?
        invalid_properties.push('invalid value for "extract_text_and_graphics", extract_text_and_graphics cannot be nil.')
      end

      if @assemble_document.nil?
        invalid_properties.push('invalid value for "assemble_document", assemble_document cannot be nil.')
      end

      if @high_quality_print.nil?
        invalid_properties.push('invalid value for "high_quality_print", high_quality_print cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @print_document.nil?
      return false if @modify_content.nil?
      return false if @copy_text_and_graphics.nil?
      return false if @add_or_modify_fields.nil?
      return false if @fill_existing_fields.nil?
      return false if @extract_text_and_graphics.nil?
      return false if @assemble_document.nil?
      return false if @high_quality_print.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          print_document == o.print_document &&
          modify_content == o.modify_content &&
          copy_text_and_graphics == o.copy_text_and_graphics &&
          add_or_modify_fields == o.add_or_modify_fields &&
          fill_existing_fields == o.fill_existing_fields &&
          extract_text_and_graphics == o.extract_text_and_graphics &&
          assemble_document == o.assemble_document &&
          high_quality_print == o.high_quality_print
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [print_document, modify_content, copy_text_and_graphics, add_or_modify_fields, fill_existing_fields, extract_text_and_graphics, assemble_document, high_quality_print].hash
    end
  end
end
