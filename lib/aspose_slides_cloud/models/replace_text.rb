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
  # Replace text task.
  class ReplaceText < Task
    # Text to be replaced.
    attr_accessor :old_text

    # Text to replace with.
    attr_accessor :new_text

    # True to ignore case in replace pattern search.
    attr_accessor :ignore_case

    # One-based position of the slide to perform the replace in. 0 to make the replace throughout the presentation.
    attr_accessor :slide_position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'old_text' => :'OldText',
        :'new_text' => :'NewText',
        :'ignore_case' => :'IgnoreCase',
        :'slide_position' => :'SlidePosition',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'old_text' => :'String',
        :'new_text' => :'String',
        :'ignore_case' => :'BOOLEAN',
        :'slide_position' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'OldText')
        self.old_text = attributes[:'OldText']
      end

      if attributes.has_key?(:'NewText')
        self.new_text = attributes[:'NewText']
      end

      if attributes.has_key?(:'IgnoreCase')
        self.ignore_case = attributes[:'IgnoreCase']
      end

      if attributes.has_key?(:'SlidePosition')
        self.slide_position = attributes[:'SlidePosition']
      end
      self.type = 'ReplaceText'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @ignore_case.nil?
        invalid_properties.push('invalid value for "ignore_case", ignore_case cannot be nil.')
      end

      if @slide_position.nil?
        invalid_properties.push('invalid value for "slide_position", slide_position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @ignore_case.nil?
      return false if @slide_position.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          old_text == o.old_text &&
          new_text == o.new_text &&
          ignore_case == o.ignore_case &&
          slide_position == o.slide_position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, old_text, new_text, ignore_case, slide_position].hash
    end
  end
end
