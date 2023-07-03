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
  # Represents slide comment
  class SlideCommentBase < BaseObject
    # Author.
    attr_accessor :author

    # Text.
    attr_accessor :text

    # Creation time.
    attr_accessor :created_time

    # Child comments.
    attr_accessor :child_comments

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'author' => :'Author',
        :'text' => :'Text',
        :'created_time' => :'CreatedTime',
        :'child_comments' => :'ChildComments',
        :'type' => :'Type',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'author' => :'String',
        :'text' => :'String',
        :'created_time' => :'String',
        :'child_comments' => :'Array<SlideCommentBase>',
        :'type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Author')
        self.author = attributes[:'Author']
      end

      if attributes.has_key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.has_key?(:'CreatedTime')
        self.created_time = attributes[:'CreatedTime']
      end

      if attributes.has_key?(:'ChildComments')
        if (value = attributes[:'ChildComments']).is_a?(Array)
          self.child_comments = value
        end
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
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
      type_validator = EnumAttributeValidator.new('String', ['Regular', 'Modern'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Regular', 'Modern'])
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
          author == o.author &&
          text == o.text &&
          created_time == o.created_time &&
          child_comments == o.child_comments &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [author, text, created_time, child_comments, type].hash
    end
  end
end
