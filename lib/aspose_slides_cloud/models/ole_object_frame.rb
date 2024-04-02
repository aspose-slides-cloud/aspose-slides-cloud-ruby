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
  # Represents OleObjectFrame resource.
  class OleObjectFrame < ShapeBase
    # True if an object is visible as icon.
    attr_accessor :is_object_icon

    # The title for OleObject icon.             
    attr_accessor :substitute_picture_title

    # OleObject image fill properties.
    attr_accessor :substitute_picture_format

    # Returns or sets the name of an object.
    attr_accessor :object_name

    # File data of embedded OLE object. 
    attr_accessor :embedded_file_base64_data

    # File extension for the current embedded OLE object
    attr_accessor :embedded_file_extension

    # ProgID of an object.
    attr_accessor :object_prog_id

    # Full path to a linked file.
    attr_accessor :link_path

    # Determines if the linked embedded object is automatically updated when the presentation is opened or printed. Read/write Boolean.
    attr_accessor :update_automatic

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'is_object_icon' => :'IsObjectIcon',
        :'substitute_picture_title' => :'SubstitutePictureTitle',
        :'substitute_picture_format' => :'SubstitutePictureFormat',
        :'object_name' => :'ObjectName',
        :'embedded_file_base64_data' => :'EmbeddedFileBase64Data',
        :'embedded_file_extension' => :'EmbeddedFileExtension',
        :'object_prog_id' => :'ObjectProgId',
        :'link_path' => :'LinkPath',
        :'update_automatic' => :'UpdateAutomatic',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'is_object_icon' => :'BOOLEAN',
        :'substitute_picture_title' => :'String',
        :'substitute_picture_format' => :'PictureFill',
        :'object_name' => :'String',
        :'embedded_file_base64_data' => :'String',
        :'embedded_file_extension' => :'String',
        :'object_prog_id' => :'String',
        :'link_path' => :'String',
        :'update_automatic' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'IsObjectIcon')
        self.is_object_icon = attributes[:'IsObjectIcon']
      end

      if attributes.has_key?(:'SubstitutePictureTitle')
        self.substitute_picture_title = attributes[:'SubstitutePictureTitle']
      end

      if attributes.has_key?(:'SubstitutePictureFormat')
        self.substitute_picture_format = attributes[:'SubstitutePictureFormat']
      end

      if attributes.has_key?(:'ObjectName')
        self.object_name = attributes[:'ObjectName']
      end

      if attributes.has_key?(:'EmbeddedFileBase64Data')
        self.embedded_file_base64_data = attributes[:'EmbeddedFileBase64Data']
      end

      if attributes.has_key?(:'EmbeddedFileExtension')
        self.embedded_file_extension = attributes[:'EmbeddedFileExtension']
      end

      if attributes.has_key?(:'ObjectProgId')
        self.object_prog_id = attributes[:'ObjectProgId']
      end

      if attributes.has_key?(:'LinkPath')
        self.link_path = attributes[:'LinkPath']
      end

      if attributes.has_key?(:'UpdateAutomatic')
        self.update_automatic = attributes[:'UpdateAutomatic']
      end
      self.type = 'OleObjectFrame'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @is_object_icon.nil?
        invalid_properties.push('invalid value for "is_object_icon", is_object_icon cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @is_object_icon.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          name == o.name &&
          width == o.width &&
          height == o.height &&
          alternative_text == o.alternative_text &&
          alternative_text_title == o.alternative_text_title &&
          hidden == o.hidden &&
          is_decorative == o.is_decorative &&
          x == o.x &&
          y == o.y &&
          z_order_position == o.z_order_position &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          hyperlink_click == o.hyperlink_click &&
          hyperlink_mouse_over == o.hyperlink_mouse_over &&
          type == o.type &&
          is_object_icon == o.is_object_icon &&
          substitute_picture_title == o.substitute_picture_title &&
          substitute_picture_format == o.substitute_picture_format &&
          object_name == o.object_name &&
          embedded_file_base64_data == o.embedded_file_base64_data &&
          embedded_file_extension == o.embedded_file_extension &&
          object_prog_id == o.object_prog_id &&
          link_path == o.link_path &&
          update_automatic == o.update_automatic
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, is_decorative, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, is_object_icon, substitute_picture_title, substitute_picture_format, object_name, embedded_file_base64_data, embedded_file_extension, object_prog_id, link_path, update_automatic].hash
    end
  end
end
