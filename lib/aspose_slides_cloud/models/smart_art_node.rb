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
  # Smart art node.
  class SmartArtNode < BaseObject
    # Node list.
    attr_accessor :nodes

    # Gets or sets the link to shapes.
    attr_accessor :shapes

    # True for and assistant node.
    attr_accessor :is_assistant

    # Node text.
    attr_accessor :text

    # Organization chart layout type associated with current node.
    attr_accessor :org_chart_layout

    # Get or sets list to paragraphs list
    attr_accessor :paragraphs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nodes' => :'Nodes',
        :'shapes' => :'Shapes',
        :'is_assistant' => :'IsAssistant',
        :'text' => :'Text',
        :'org_chart_layout' => :'OrgChartLayout',
        :'paragraphs' => :'Paragraphs',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'nodes' => :'Array<SmartArtNode>',
        :'shapes' => :'ResourceUri',
        :'is_assistant' => :'BOOLEAN',
        :'text' => :'String',
        :'org_chart_layout' => :'String',
        :'paragraphs' => :'ResourceUri',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Nodes')
        if (value = attributes[:'Nodes']).is_a?(Array)
          self.nodes = value
        end
      end

      if attributes.has_key?(:'Shapes')
        self.shapes = attributes[:'Shapes']
      end

      if attributes.has_key?(:'IsAssistant')
        self.is_assistant = attributes[:'IsAssistant']
      end

      if attributes.has_key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.has_key?(:'OrgChartLayout')
        self.org_chart_layout = attributes[:'OrgChartLayout']
      end

      if attributes.has_key?(:'Paragraphs')
        self.paragraphs = attributes[:'Paragraphs']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_assistant.nil?
        invalid_properties.push('invalid value for "is_assistant", is_assistant cannot be nil.')
      end

      if @org_chart_layout.nil?
        invalid_properties.push('invalid value for "org_chart_layout", org_chart_layout cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_assistant.nil?
      return false if @org_chart_layout.nil?
      org_chart_layout_validator = EnumAttributeValidator.new('String', ['Initial', 'Standart', 'BothHanging', 'LeftHanging', 'RightHanging'])
      return false unless org_chart_layout_validator.valid?(@org_chart_layout)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] org_chart_layout Object to be assigned
    def org_chart_layout=(org_chart_layout)
      validator = EnumAttributeValidator.new('String', ['Initial', 'Standart', 'BothHanging', 'LeftHanging', 'RightHanging'])
      unless validator.valid?(org_chart_layout)
        fail ArgumentError, 'invalid value for "org_chart_layout", must be one of #{validator.allowable_values}.'
      end
      @org_chart_layout = org_chart_layout
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nodes == o.nodes &&
          shapes == o.shapes &&
          is_assistant == o.is_assistant &&
          text == o.text &&
          org_chart_layout == o.org_chart_layout &&
          paragraphs == o.paragraphs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [nodes, shapes, is_assistant, text, org_chart_layout, paragraphs].hash
    end
  end
end
