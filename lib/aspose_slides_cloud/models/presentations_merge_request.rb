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
  # Request for presentations merge
  class PresentationsMergeRequest < BaseObject
    # Gets or sets the presentation paths.
    attr_accessor :presentation_paths

    # Gets or sets the presentation passwords.
    attr_accessor :presentation_passwords

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'presentation_paths' => :'PresentationPaths',
        :'presentation_passwords' => :'PresentationPasswords',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'presentation_paths' => :'Array<String>',
        :'presentation_passwords' => :'Array<String>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'PresentationPaths')
        if (value = attributes[:'PresentationPaths']).is_a?(Array)
          self.presentation_paths = value
        end
      end

      if attributes.has_key?(:'PresentationPasswords')
        if (value = attributes[:'PresentationPasswords']).is_a?(Array)
          self.presentation_passwords = value
        end
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
          presentation_paths == o.presentation_paths &&
          presentation_passwords == o.presentation_passwords
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [presentation_paths, presentation_passwords].hash
    end
  end
end
