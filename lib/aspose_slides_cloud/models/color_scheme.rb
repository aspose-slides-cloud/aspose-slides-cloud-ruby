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
  # Slide's color scheme DTO
  class ColorScheme < ResourceBase
    # First accent color.
    attr_accessor :accent1

    # Second accent color.
    attr_accessor :accent2

    # Third accent color.
    attr_accessor :accent3

    # Fourth accent color.
    attr_accessor :accent4

    # Fifth accent color.
    attr_accessor :accent5

    # Sixth accent color.
    attr_accessor :accent6

    # First dark color.
    attr_accessor :dark1

    # Second dark color.
    attr_accessor :dark2

    # Visited hyperlink color.
    attr_accessor :followed_hyperlink

    # Hyperlink color/
    attr_accessor :hyperlink

    # First light color.
    attr_accessor :light1

    # Second light color.
    attr_accessor :light2

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'accent1' => :'Accent1',
        :'accent2' => :'Accent2',
        :'accent3' => :'Accent3',
        :'accent4' => :'Accent4',
        :'accent5' => :'Accent5',
        :'accent6' => :'Accent6',
        :'dark1' => :'Dark1',
        :'dark2' => :'Dark2',
        :'followed_hyperlink' => :'FollowedHyperlink',
        :'hyperlink' => :'Hyperlink',
        :'light1' => :'Light1',
        :'light2' => :'Light2',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'accent1' => :'String',
        :'accent2' => :'String',
        :'accent3' => :'String',
        :'accent4' => :'String',
        :'accent5' => :'String',
        :'accent6' => :'String',
        :'dark1' => :'String',
        :'dark2' => :'String',
        :'followed_hyperlink' => :'String',
        :'hyperlink' => :'String',
        :'light1' => :'String',
        :'light2' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Accent1')
        self.accent1 = attributes[:'Accent1']
      end

      if attributes.has_key?(:'Accent2')
        self.accent2 = attributes[:'Accent2']
      end

      if attributes.has_key?(:'Accent3')
        self.accent3 = attributes[:'Accent3']
      end

      if attributes.has_key?(:'Accent4')
        self.accent4 = attributes[:'Accent4']
      end

      if attributes.has_key?(:'Accent5')
        self.accent5 = attributes[:'Accent5']
      end

      if attributes.has_key?(:'Accent6')
        self.accent6 = attributes[:'Accent6']
      end

      if attributes.has_key?(:'Dark1')
        self.dark1 = attributes[:'Dark1']
      end

      if attributes.has_key?(:'Dark2')
        self.dark2 = attributes[:'Dark2']
      end

      if attributes.has_key?(:'FollowedHyperlink')
        self.followed_hyperlink = attributes[:'FollowedHyperlink']
      end

      if attributes.has_key?(:'Hyperlink')
        self.hyperlink = attributes[:'Hyperlink']
      end

      if attributes.has_key?(:'Light1')
        self.light1 = attributes[:'Light1']
      end

      if attributes.has_key?(:'Light2')
        self.light2 = attributes[:'Light2']
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
          accent1 == o.accent1 &&
          accent2 == o.accent2 &&
          accent3 == o.accent3 &&
          accent4 == o.accent4 &&
          accent5 == o.accent5 &&
          accent6 == o.accent6 &&
          dark1 == o.dark1 &&
          dark2 == o.dark2 &&
          followed_hyperlink == o.followed_hyperlink &&
          hyperlink == o.hyperlink &&
          light1 == o.light1 &&
          light2 == o.light2
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, accent1, accent2, accent3, accent4, accent5, accent6, dark1, dark2, followed_hyperlink, hyperlink, light1, light2].hash
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
        registry_type = AsposeSlidesCloud::TypeRegistry.get_type(type.to_s, value)
        if registry_type
          type = registry_type
        end
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
