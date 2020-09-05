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
  # Slides document properties.
  class ViewProperties < ResourceBase
    # Last used view mode.
    attr_accessor :last_view

    # Horizontal bar state.
    attr_accessor :horizontal_bar_state

    # Vertical bar state.
    attr_accessor :vertical_bar_state

    # True to prefer single view.
    attr_accessor :prefer_single_view

    # The sizing of the side content region of the normal view, when the region is of a variable restored size.
    attr_accessor :restored_left

    # The sizing of the top slide region of the normal view, when the region is of a variable restored size.
    attr_accessor :restored_top

    # Slide view mode properties.
    attr_accessor :slide_view_properties

    # Notes view mode properties.
    attr_accessor :notes_view_properties

    # True if the comments should be shown.
    attr_accessor :show_comments

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.any?{ |s| s.casecmp(value) == 0 }
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'last_view' => :'LastView',
        :'horizontal_bar_state' => :'HorizontalBarState',
        :'vertical_bar_state' => :'VerticalBarState',
        :'prefer_single_view' => :'PreferSingleView',
        :'restored_left' => :'RestoredLeft',
        :'restored_top' => :'RestoredTop',
        :'slide_view_properties' => :'SlideViewProperties',
        :'notes_view_properties' => :'NotesViewProperties',
        :'show_comments' => :'ShowComments',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'last_view' => :'String',
        :'horizontal_bar_state' => :'String',
        :'vertical_bar_state' => :'String',
        :'prefer_single_view' => :'BOOLEAN',
        :'restored_left' => :'NormalViewRestoredProperties',
        :'restored_top' => :'NormalViewRestoredProperties',
        :'slide_view_properties' => :'CommonSlideViewProperties',
        :'notes_view_properties' => :'CommonSlideViewProperties',
        :'show_comments' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'LastView')
        self.last_view = attributes[:'LastView']
      end

      if attributes.has_key?(:'HorizontalBarState')
        self.horizontal_bar_state = attributes[:'HorizontalBarState']
      end

      if attributes.has_key?(:'VerticalBarState')
        self.vertical_bar_state = attributes[:'VerticalBarState']
      end

      if attributes.has_key?(:'PreferSingleView')
        self.prefer_single_view = attributes[:'PreferSingleView']
      end

      if attributes.has_key?(:'RestoredLeft')
        self.restored_left = attributes[:'RestoredLeft']
      end

      if attributes.has_key?(:'RestoredTop')
        self.restored_top = attributes[:'RestoredTop']
      end

      if attributes.has_key?(:'SlideViewProperties')
        self.slide_view_properties = attributes[:'SlideViewProperties']
      end

      if attributes.has_key?(:'NotesViewProperties')
        self.notes_view_properties = attributes[:'NotesViewProperties']
      end

      if attributes.has_key?(:'ShowComments')
        self.show_comments = attributes[:'ShowComments']
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
      last_view_validator = EnumAttributeValidator.new('String', ['NotDefined', 'SlideView', 'SlideMasterView', 'NotesView', 'HandoutView', 'NotesMasterView', 'OutlineView', 'SlideSorterView', 'SlideThumbnailView'])
      return false unless last_view_validator.valid?(@last_view)
      horizontal_bar_state_validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      return false unless horizontal_bar_state_validator.valid?(@horizontal_bar_state)
      vertical_bar_state_validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      return false unless vertical_bar_state_validator.valid?(@vertical_bar_state)
      show_comments_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless show_comments_validator.valid?(@show_comments)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_view Object to be assigned
    def last_view=(last_view)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'SlideView', 'SlideMasterView', 'NotesView', 'HandoutView', 'NotesMasterView', 'OutlineView', 'SlideSorterView', 'SlideThumbnailView'])
      unless validator.valid?(last_view)
        fail ArgumentError, 'invalid value for "last_view", must be one of #{validator.allowable_values}.'
      end
      @last_view = last_view
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] horizontal_bar_state Object to be assigned
    def horizontal_bar_state=(horizontal_bar_state)
      validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      unless validator.valid?(horizontal_bar_state)
        fail ArgumentError, 'invalid value for "horizontal_bar_state", must be one of #{validator.allowable_values}.'
      end
      @horizontal_bar_state = horizontal_bar_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_bar_state Object to be assigned
    def vertical_bar_state=(vertical_bar_state)
      validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      unless validator.valid?(vertical_bar_state)
        fail ArgumentError, 'invalid value for "vertical_bar_state", must be one of #{validator.allowable_values}.'
      end
      @vertical_bar_state = vertical_bar_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] show_comments Object to be assigned
    def show_comments=(show_comments)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(show_comments)
        fail ArgumentError, 'invalid value for "show_comments", must be one of #{validator.allowable_values}.'
      end
      @show_comments = show_comments
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          last_view == o.last_view &&
          horizontal_bar_state == o.horizontal_bar_state &&
          vertical_bar_state == o.vertical_bar_state &&
          prefer_single_view == o.prefer_single_view &&
          restored_left == o.restored_left &&
          restored_top == o.restored_top &&
          slide_view_properties == o.slide_view_properties &&
          notes_view_properties == o.notes_view_properties &&
          show_comments == o.show_comments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, last_view, horizontal_bar_state, vertical_bar_state, prefer_single_view, restored_left, restored_top, slide_view_properties, notes_view_properties, show_comments].hash
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
