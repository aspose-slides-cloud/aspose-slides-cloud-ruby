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
  # Protection properties.
  class ProtectionProperties < ResourceBase
    # True if document properties are encrypted. Has effect only for password protected presentations.
    attr_accessor :encrypt_document_properties

    # True if the document should be opened as read-only.
    attr_accessor :read_only_recommended

    # Password for read protection.
    attr_accessor :read_password

    # Password for write protection.
    attr_accessor :write_password

    # Returns true if the presentation protected for editing. 
    attr_accessor :is_write_protected

    # Returns true if the presentation protected for reading. 
    attr_accessor :is_encrypted

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'encrypt_document_properties' => :'EncryptDocumentProperties',
        :'read_only_recommended' => :'ReadOnlyRecommended',
        :'read_password' => :'ReadPassword',
        :'write_password' => :'WritePassword',
        :'is_write_protected' => :'IsWriteProtected',
        :'is_encrypted' => :'IsEncrypted',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'encrypt_document_properties' => :'BOOLEAN',
        :'read_only_recommended' => :'BOOLEAN',
        :'read_password' => :'String',
        :'write_password' => :'String',
        :'is_write_protected' => :'BOOLEAN',
        :'is_encrypted' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'EncryptDocumentProperties')
        self.encrypt_document_properties = attributes[:'EncryptDocumentProperties']
      end

      if attributes.has_key?(:'ReadOnlyRecommended')
        self.read_only_recommended = attributes[:'ReadOnlyRecommended']
      end

      if attributes.has_key?(:'ReadPassword')
        self.read_password = attributes[:'ReadPassword']
      end

      if attributes.has_key?(:'WritePassword')
        self.write_password = attributes[:'WritePassword']
      end

      if attributes.has_key?(:'IsWriteProtected')
        self.is_write_protected = attributes[:'IsWriteProtected']
      end

      if attributes.has_key?(:'IsEncrypted')
        self.is_encrypted = attributes[:'IsEncrypted']
      end
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          encrypt_document_properties == o.encrypt_document_properties &&
          read_only_recommended == o.read_only_recommended &&
          read_password == o.read_password &&
          write_password == o.write_password &&
          is_write_protected == o.is_write_protected &&
          is_encrypted == o.is_encrypted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, encrypt_document_properties, read_only_recommended, read_password, write_password, is_write_protected, is_encrypted].hash
    end
  end
end
