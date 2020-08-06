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
  # Provides options that control how a presentation is saved in SWF format.
  class SwfExportOptions
    # Export format.
    attr_accessor :format

    # Specifies whether the generated document should include hidden slides or not. Default is false. 
    attr_accessor :show_hidden_slides

    # Specifies whether the generated SWF document should be compressed or not. Default is true. 
    attr_accessor :compressed

    # Specifies whether the generated SWF document should include the integrated document viewer or not. Default is true. 
    attr_accessor :viewer_included

    # Specifies whether border around pages should be shown. Default is true. 
    attr_accessor :show_page_border

    # Show/hide fullscreen button. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_full_screen

    # Show/hide page stepper. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_page_stepper

    # Show/hide search section. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_search

    # Show/hide whole top pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_top_pane

    # Show/hide bottom pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_bottom_pane

    # Show/hide left pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_left_pane

    # Start with opened left pane. Can be overridden in flashvars. Default is false. 
    attr_accessor :start_open_left_pane

    # Enable/disable context menu. Default is true. 
    attr_accessor :enable_context_menu

    # Image that will be displayed as logo in the top right corner of the viewer. The image data is a base 64 string. Image should be 32x64 pixels PNG image, otherwise logo can be displayed improperly. 
    attr_accessor :logo_image

    # Gets or sets the full hyperlink address for a logo. Has an effect only if a LogoImage is specified. 
    attr_accessor :logo_link

    # Specifies the quality of JPEG images. Default is 95.
    attr_accessor :jpeg_quality

    # Gets or sets the position of the notes on the page.
    attr_accessor :notes_position

    # Gets or sets the position of the comments on the page.
    attr_accessor :comments_position

    # Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_width

    # Gets or sets the color of comments area (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_color

    # True if comments that have no author are displayed. (Applies only if comments are displayed).
    attr_accessor :show_comments_by_no_author

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
      {
        :'format' => :'Format',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'compressed' => :'Compressed',
        :'viewer_included' => :'ViewerIncluded',
        :'show_page_border' => :'ShowPageBorder',
        :'show_full_screen' => :'ShowFullScreen',
        :'show_page_stepper' => :'ShowPageStepper',
        :'show_search' => :'ShowSearch',
        :'show_top_pane' => :'ShowTopPane',
        :'show_bottom_pane' => :'ShowBottomPane',
        :'show_left_pane' => :'ShowLeftPane',
        :'start_open_left_pane' => :'StartOpenLeftPane',
        :'enable_context_menu' => :'EnableContextMenu',
        :'logo_image' => :'LogoImage',
        :'logo_link' => :'LogoLink',
        :'jpeg_quality' => :'JpegQuality',
        :'notes_position' => :'NotesPosition',
        :'comments_position' => :'CommentsPosition',
        :'comments_area_width' => :'CommentsAreaWidth',
        :'comments_area_color' => :'CommentsAreaColor',
        :'show_comments_by_no_author' => :'ShowCommentsByNoAuthor'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'show_hidden_slides' => :'BOOLEAN',
        :'compressed' => :'BOOLEAN',
        :'viewer_included' => :'BOOLEAN',
        :'show_page_border' => :'BOOLEAN',
        :'show_full_screen' => :'BOOLEAN',
        :'show_page_stepper' => :'BOOLEAN',
        :'show_search' => :'BOOLEAN',
        :'show_top_pane' => :'BOOLEAN',
        :'show_bottom_pane' => :'BOOLEAN',
        :'show_left_pane' => :'BOOLEAN',
        :'start_open_left_pane' => :'BOOLEAN',
        :'enable_context_menu' => :'BOOLEAN',
        :'logo_image' => :'String',
        :'logo_link' => :'String',
        :'jpeg_quality' => :'Integer',
        :'notes_position' => :'String',
        :'comments_position' => :'String',
        :'comments_area_width' => :'Integer',
        :'comments_area_color' => :'String',
        :'show_comments_by_no_author' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Format')
        self.format = attributes[:'Format']
      else
        self.format = "swf"
      end

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.has_key?(:'Compressed')
        self.compressed = attributes[:'Compressed']
      end

      if attributes.has_key?(:'ViewerIncluded')
        self.viewer_included = attributes[:'ViewerIncluded']
      end

      if attributes.has_key?(:'ShowPageBorder')
        self.show_page_border = attributes[:'ShowPageBorder']
      end

      if attributes.has_key?(:'ShowFullScreen')
        self.show_full_screen = attributes[:'ShowFullScreen']
      end

      if attributes.has_key?(:'ShowPageStepper')
        self.show_page_stepper = attributes[:'ShowPageStepper']
      end

      if attributes.has_key?(:'ShowSearch')
        self.show_search = attributes[:'ShowSearch']
      end

      if attributes.has_key?(:'ShowTopPane')
        self.show_top_pane = attributes[:'ShowTopPane']
      end

      if attributes.has_key?(:'ShowBottomPane')
        self.show_bottom_pane = attributes[:'ShowBottomPane']
      end

      if attributes.has_key?(:'ShowLeftPane')
        self.show_left_pane = attributes[:'ShowLeftPane']
      end

      if attributes.has_key?(:'StartOpenLeftPane')
        self.start_open_left_pane = attributes[:'StartOpenLeftPane']
      end

      if attributes.has_key?(:'EnableContextMenu')
        self.enable_context_menu = attributes[:'EnableContextMenu']
      end

      if attributes.has_key?(:'LogoImage')
        self.logo_image = attributes[:'LogoImage']
      end

      if attributes.has_key?(:'LogoLink')
        self.logo_link = attributes[:'LogoLink']
      end

      if attributes.has_key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.has_key?(:'NotesPosition')
        self.notes_position = attributes[:'NotesPosition']
      end

      if attributes.has_key?(:'CommentsPosition')
        self.comments_position = attributes[:'CommentsPosition']
      end

      if attributes.has_key?(:'CommentsAreaWidth')
        self.comments_area_width = attributes[:'CommentsAreaWidth']
      end

      if attributes.has_key?(:'CommentsAreaColor')
        self.comments_area_color = attributes[:'CommentsAreaColor']
      end

      if attributes.has_key?(:'ShowCommentsByNoAuthor')
        self.show_comments_by_no_author = attributes[:'ShowCommentsByNoAuthor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @show_hidden_slides.nil?
        invalid_properties.push('invalid value for "show_hidden_slides", show_hidden_slides cannot be nil.')
      end

      if @compressed.nil?
        invalid_properties.push('invalid value for "compressed", compressed cannot be nil.')
      end

      if @viewer_included.nil?
        invalid_properties.push('invalid value for "viewer_included", viewer_included cannot be nil.')
      end

      if @show_page_border.nil?
        invalid_properties.push('invalid value for "show_page_border", show_page_border cannot be nil.')
      end

      if @show_full_screen.nil?
        invalid_properties.push('invalid value for "show_full_screen", show_full_screen cannot be nil.')
      end

      if @show_page_stepper.nil?
        invalid_properties.push('invalid value for "show_page_stepper", show_page_stepper cannot be nil.')
      end

      if @show_search.nil?
        invalid_properties.push('invalid value for "show_search", show_search cannot be nil.')
      end

      if @show_top_pane.nil?
        invalid_properties.push('invalid value for "show_top_pane", show_top_pane cannot be nil.')
      end

      if @show_bottom_pane.nil?
        invalid_properties.push('invalid value for "show_bottom_pane", show_bottom_pane cannot be nil.')
      end

      if @show_left_pane.nil?
        invalid_properties.push('invalid value for "show_left_pane", show_left_pane cannot be nil.')
      end

      if @start_open_left_pane.nil?
        invalid_properties.push('invalid value for "start_open_left_pane", start_open_left_pane cannot be nil.')
      end

      if @enable_context_menu.nil?
        invalid_properties.push('invalid value for "enable_context_menu", enable_context_menu cannot be nil.')
      end

      if @jpeg_quality.nil?
        invalid_properties.push('invalid value for "jpeg_quality", jpeg_quality cannot be nil.')
      end

      if @notes_position.nil?
        invalid_properties.push('invalid value for "notes_position", notes_position cannot be nil.')
      end

      if @comments_position.nil?
        invalid_properties.push('invalid value for "comments_position", comments_position cannot be nil.')
      end

      if @comments_area_width.nil?
        invalid_properties.push('invalid value for "comments_area_width", comments_area_width cannot be nil.')
      end

      if @show_comments_by_no_author.nil?
        invalid_properties.push('invalid value for "show_comments_by_no_author", show_comments_by_no_author cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @show_hidden_slides.nil?
      return false if @compressed.nil?
      return false if @viewer_included.nil?
      return false if @show_page_border.nil?
      return false if @show_full_screen.nil?
      return false if @show_page_stepper.nil?
      return false if @show_search.nil?
      return false if @show_top_pane.nil?
      return false if @show_bottom_pane.nil?
      return false if @show_left_pane.nil?
      return false if @start_open_left_pane.nil?
      return false if @enable_context_menu.nil?
      return false if @jpeg_quality.nil?
      return false if @notes_position.nil?
      notes_position_validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      return false unless notes_position_validator.valid?(@notes_position)
      return false if @comments_position.nil?
      comments_position_validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      return false unless comments_position_validator.valid?(@comments_position)
      return false if @comments_area_width.nil?
      return false if @show_comments_by_no_author.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notes_position Object to be assigned
    def notes_position=(notes_position)
      validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      unless validator.valid?(notes_position)
        fail ArgumentError, 'invalid value for "notes_position", must be one of #{validator.allowable_values}.'
      end
      @notes_position = notes_position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comments_position Object to be assigned
    def comments_position=(comments_position)
      validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      unless validator.valid?(comments_position)
        fail ArgumentError, 'invalid value for "comments_position", must be one of #{validator.allowable_values}.'
      end
      @comments_position = comments_position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          format == o.format &&
          show_hidden_slides == o.show_hidden_slides &&
          compressed == o.compressed &&
          viewer_included == o.viewer_included &&
          show_page_border == o.show_page_border &&
          show_full_screen == o.show_full_screen &&
          show_page_stepper == o.show_page_stepper &&
          show_search == o.show_search &&
          show_top_pane == o.show_top_pane &&
          show_bottom_pane == o.show_bottom_pane &&
          show_left_pane == o.show_left_pane &&
          start_open_left_pane == o.start_open_left_pane &&
          enable_context_menu == o.enable_context_menu &&
          logo_image == o.logo_image &&
          logo_link == o.logo_link &&
          jpeg_quality == o.jpeg_quality &&
          notes_position == o.notes_position &&
          comments_position == o.comments_position &&
          comments_area_width == o.comments_area_width &&
          comments_area_color == o.comments_area_color &&
          show_comments_by_no_author == o.show_comments_by_no_author
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, show_hidden_slides, compressed, viewer_included, show_page_border, show_full_screen, show_page_stepper, show_search, show_top_pane, show_bottom_pane, show_left_pane, start_open_left_pane, enable_context_menu, logo_image, logo_link, jpeg_quality, notes_position, comments_position, comments_area_width, comments_area_color, show_comments_by_no_author].hash
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
