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
      if @is_write_protected.nil?
        invalid_properties.push('invalid value for "is_write_protected", is_write_protected cannot be nil.')
      end

      if @is_encrypted.nil?
        invalid_properties.push('invalid value for "is_encrypted", is_encrypted cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @is_write_protected.nil?
      return false if @is_encrypted.nil?
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

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        mapKey = self.class.attribute_map[key]
        if !mapKey.nil?
          val = attributes[mapKey]
          if val.nil?
            mapKeyString = mapKey.to_s
            mapKeyString[0] = mapKeyString[0].downcase
            mapKey = mapKeyString.to_sym
            val = attributes[mapKey]
          end
          if !val.nil?
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the the attribute
              # is documented as an array but the input is not
              if val.is_a?(Array)
                self.send("#{key}=", val.map { |v| _deserialize($1, v) })
              end
            else
              self.send("#{key}=", _deserialize(type, val))
            end
          end
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeSlidesCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
