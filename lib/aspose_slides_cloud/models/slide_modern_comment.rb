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
  # Represents modern comment of slide
  class SlideModernComment < SlideCommentBase
    # Returns or sets starting position of text selection in text frame if the comment associated with AutoShape. Read/write Int32.
    attr_accessor :text_selection_start

    # Returns or sets text selection length in text frame if the comment associated with AutoShape. Read/write Int32.
    attr_accessor :text_selection_length

    # Returns or sets the status of the comment. Read/write ModernCommentStatus.
    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'text_selection_start' => :'TextSelectionStart',
        :'text_selection_length' => :'TextSelectionLength',
        :'status' => :'Status',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'text_selection_start' => :'Integer',
        :'text_selection_length' => :'Integer',
        :'status' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'TextSelectionStart')
        self.text_selection_start = attributes[:'TextSelectionStart']
      end

      if attributes.has_key?(:'TextSelectionLength')
        self.text_selection_length = attributes[:'TextSelectionLength']
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end
      self.type = 'Modern'
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
      status_validator = EnumAttributeValidator.new('String', ['NotDefined', 'Active', 'Resolved', 'Closed'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'Active', 'Resolved', 'Closed'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author == o.author &&
          text == o.text &&
          created_time == o.created_time &&
          child_comments == o.child_comments &&
          type == o.type &&
          text_selection_start == o.text_selection_start &&
          text_selection_length == o.text_selection_length &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [author, text, created_time, child_comments, type, text_selection_start, text_selection_length, status].hash
    end
  end
end
