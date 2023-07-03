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
  # Represents SmartArt shape resource.
  class SmartArt < ShapeBase
    # Layout type.
    attr_accessor :layout

    # Quick style.
    attr_accessor :quick_style

    # Color style.
    attr_accessor :color_style

    # Collection of nodes in SmartArt object.             
    attr_accessor :nodes

    # The state of the SmartArt diagram with regard to (left-to-right) LTR or (right-to-left) RTL, if the diagram supports reversal.
    attr_accessor :is_reversed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'layout' => :'Layout',
        :'quick_style' => :'QuickStyle',
        :'color_style' => :'ColorStyle',
        :'nodes' => :'Nodes',
        :'is_reversed' => :'IsReversed',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'layout' => :'String',
        :'quick_style' => :'String',
        :'color_style' => :'String',
        :'nodes' => :'Array<SmartArtNode>',
        :'is_reversed' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Layout')
        self.layout = attributes[:'Layout']
      end

      if attributes.has_key?(:'QuickStyle')
        self.quick_style = attributes[:'QuickStyle']
      end

      if attributes.has_key?(:'ColorStyle')
        self.color_style = attributes[:'ColorStyle']
      end

      if attributes.has_key?(:'Nodes')
        if (value = attributes[:'Nodes']).is_a?(Array)
          self.nodes = value
        end
      end

      if attributes.has_key?(:'IsReversed')
        self.is_reversed = attributes[:'IsReversed']
      end
      self.type = 'SmartArt'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @layout.nil?
        invalid_properties.push('invalid value for "layout", layout cannot be nil.')
      end

      if @quick_style.nil?
        invalid_properties.push('invalid value for "quick_style", quick_style cannot be nil.')
      end

      if @color_style.nil?
        invalid_properties.push('invalid value for "color_style", color_style cannot be nil.')
      end

      if @is_reversed.nil?
        invalid_properties.push('invalid value for "is_reversed", is_reversed cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @layout.nil?
      layout_validator = EnumAttributeValidator.new('String', ['AccentProcess', 'AccentedPicture', 'AlternatingFlow', 'AlternatingHexagons', 'AlternatingPictureBlocks', 'AlternatingPictureCircles', 'ArrowRibbon', 'AscendingPictureAccentProcess', 'Balance', 'BasicBendingProcess', 'BasicBlockList', 'BasicChevronProcess', 'BasicCycle', 'BasicMatrix', 'BasicPie', 'BasicProcess', 'BasicPyramid', 'BasicRadial', 'BasicTarget', 'BasicTimeline', 'BasicVenn', 'BendingPictureAccentList', 'BendingPictureBlocks', 'BendingPictureCaption', 'BendingPictureCaptionList', 'BendingPictureSemiTransparentText', 'BlockCycle', 'BubblePictureList', 'CaptionedPictures', 'ChevronList', 'CircleAccentTimeline', 'CircleArrowProcess', 'CirclePictureHierarchy', 'CircleRelationship', 'CircularBendingProcess', 'CircularPictureCallout', 'ClosedChevronProcess', 'ContinuousArrowProcess', 'ContinuousBlockProcess', 'ContinuousCycle', 'ContinuousPictureList', 'ConvergingArrows', 'ConvergingRadial', 'CounterbalanceArrows', 'CycleMatrix', 'DescendingBlockList', 'DescendingProcess', 'DetailedProcess', 'DivergingArrows', 'DivergingRadial', 'Equation', 'FramedTextPicture', 'Funnel', 'Gear', 'GridMatrix', 'GroupedList', 'HalfCircleOrganizationChart', 'HexagonCluster', 'Hierarchy', 'HierarchyList', 'HorizontalBulletList', 'HorizontalHierarchy', 'HorizontalLabeledHierarchy', 'HorizontalMultiLevelHierarchy', 'HorizontalOrganizationChart', 'HorizontalPictureList', 'IncreasingArrowsProcess', 'IncreasingCircleProcess', 'InvertedPyramid', 'LabeledHierarchy', 'LinearVenn', 'LinedList', 'MultidirectionalCycle', 'NameandTitleOrganizationChart', 'NestedTarget', 'NondirectionalCycle', 'OpposingArrows', 'OpposingIdeas', 'OrganizationChart', 'PhasedProcess', 'PictureAccentBlocks', 'PictureAccentList', 'PictureAccentProcess', 'PictureCaptionList', 'PictureGrid', 'PictureLineup', 'PictureStrips', 'PieProcess', 'PlusandMinus', 'ProcessArrows', 'ProcessList', 'PyramidList', 'RadialCluster', 'RadialCycle', 'RadialList', 'RadialVenn', 'RandomToResultProcess', 'RepeatingBendingProcess', 'ReverseList', 'SegmentedCycle', 'SegmentedProcess', 'SegmentedPyramid', 'SnapshotPictureList', 'SpiralPicture', 'SquareAccentList', 'StackedList', 'StackedVenn', 'StaggeredProcess', 'StepDownProcess', 'StepUpProcess', 'SubStepProcess', 'TableHierarchy', 'TableList', 'TargetList', 'TextCycle', 'TitlePictureLineup', 'TitledMatrix', 'TitledPictureAccentList', 'TitledPictureBlocks', 'TrapezoidList', 'UpwardArrow', 'VerticalAccentList', 'VerticalArrowList', 'VerticalBendingProcess', 'VerticalBlockList', 'VerticalBoxList', 'VerticalBulletList', 'VerticalChevronList', 'VerticalCircleList', 'VerticalCurvedList', 'VerticalEquation', 'VerticalPictureAccentList', 'VerticalPictureList', 'VerticalProcess', 'Custom', 'PictureOrganizationChart'])
      return false unless layout_validator.valid?(@layout)
      return false if @quick_style.nil?
      quick_style_validator = EnumAttributeValidator.new('String', ['SimpleFill', 'WhiteOutline', 'SubtleEffect', 'ModerateEffect', 'IntenceEffect', 'Polished', 'Inset', 'Cartoon', 'Powder', 'BrickScene', 'FlatScene', 'MetallicScene', 'SunsetScene', 'BirdsEyeScene'])
      return false unless quick_style_validator.valid?(@quick_style)
      return false if @color_style.nil?
      color_style_validator = EnumAttributeValidator.new('String', ['Dark1Outline', 'Dark2Outline', 'DarkFill', 'ColorfulAccentColors', 'ColorfulAccentColors2to3', 'ColorfulAccentColors3to4', 'ColorfulAccentColors4to5', 'ColorfulAccentColors5to6', 'ColoredOutlineAccent1', 'ColoredFillAccent1', 'GradientRangeAccent1', 'GradientLoopAccent1', 'TransparentGradientRangeAccent1', 'ColoredOutlineAccent2', 'ColoredFillAccent2', 'GradientRangeAccent2', 'GradientLoopAccent2', 'TransparentGradientRangeAccent2', 'ColoredOutlineAccent3', 'ColoredFillAccent3', 'GradientRangeAccent3', 'GradientLoopAccent3', 'TransparentGradientRangeAccent3', 'ColoredOutlineAccent4', 'ColoredFillAccent4', 'GradientRangeAccent4', 'GradientLoopAccent4', 'TransparentGradientRangeAccent4', 'ColoredOutlineAccent5', 'ColoredFillAccent5', 'GradientRangeAccent5', 'GradientLoopAccent5', 'TransparentGradientRangeAccent5', 'ColoredOutlineAccent6', 'ColoredFillAccent6', 'GradientRangeAccent6', 'GradientLoopAccent6', 'TransparentGradientRangeAccent6'])
      return false unless color_style_validator.valid?(@color_style)
      return false if @is_reversed.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] layout Object to be assigned
    def layout=(layout)
      validator = EnumAttributeValidator.new('String', ['AccentProcess', 'AccentedPicture', 'AlternatingFlow', 'AlternatingHexagons', 'AlternatingPictureBlocks', 'AlternatingPictureCircles', 'ArrowRibbon', 'AscendingPictureAccentProcess', 'Balance', 'BasicBendingProcess', 'BasicBlockList', 'BasicChevronProcess', 'BasicCycle', 'BasicMatrix', 'BasicPie', 'BasicProcess', 'BasicPyramid', 'BasicRadial', 'BasicTarget', 'BasicTimeline', 'BasicVenn', 'BendingPictureAccentList', 'BendingPictureBlocks', 'BendingPictureCaption', 'BendingPictureCaptionList', 'BendingPictureSemiTransparentText', 'BlockCycle', 'BubblePictureList', 'CaptionedPictures', 'ChevronList', 'CircleAccentTimeline', 'CircleArrowProcess', 'CirclePictureHierarchy', 'CircleRelationship', 'CircularBendingProcess', 'CircularPictureCallout', 'ClosedChevronProcess', 'ContinuousArrowProcess', 'ContinuousBlockProcess', 'ContinuousCycle', 'ContinuousPictureList', 'ConvergingArrows', 'ConvergingRadial', 'CounterbalanceArrows', 'CycleMatrix', 'DescendingBlockList', 'DescendingProcess', 'DetailedProcess', 'DivergingArrows', 'DivergingRadial', 'Equation', 'FramedTextPicture', 'Funnel', 'Gear', 'GridMatrix', 'GroupedList', 'HalfCircleOrganizationChart', 'HexagonCluster', 'Hierarchy', 'HierarchyList', 'HorizontalBulletList', 'HorizontalHierarchy', 'HorizontalLabeledHierarchy', 'HorizontalMultiLevelHierarchy', 'HorizontalOrganizationChart', 'HorizontalPictureList', 'IncreasingArrowsProcess', 'IncreasingCircleProcess', 'InvertedPyramid', 'LabeledHierarchy', 'LinearVenn', 'LinedList', 'MultidirectionalCycle', 'NameandTitleOrganizationChart', 'NestedTarget', 'NondirectionalCycle', 'OpposingArrows', 'OpposingIdeas', 'OrganizationChart', 'PhasedProcess', 'PictureAccentBlocks', 'PictureAccentList', 'PictureAccentProcess', 'PictureCaptionList', 'PictureGrid', 'PictureLineup', 'PictureStrips', 'PieProcess', 'PlusandMinus', 'ProcessArrows', 'ProcessList', 'PyramidList', 'RadialCluster', 'RadialCycle', 'RadialList', 'RadialVenn', 'RandomToResultProcess', 'RepeatingBendingProcess', 'ReverseList', 'SegmentedCycle', 'SegmentedProcess', 'SegmentedPyramid', 'SnapshotPictureList', 'SpiralPicture', 'SquareAccentList', 'StackedList', 'StackedVenn', 'StaggeredProcess', 'StepDownProcess', 'StepUpProcess', 'SubStepProcess', 'TableHierarchy', 'TableList', 'TargetList', 'TextCycle', 'TitlePictureLineup', 'TitledMatrix', 'TitledPictureAccentList', 'TitledPictureBlocks', 'TrapezoidList', 'UpwardArrow', 'VerticalAccentList', 'VerticalArrowList', 'VerticalBendingProcess', 'VerticalBlockList', 'VerticalBoxList', 'VerticalBulletList', 'VerticalChevronList', 'VerticalCircleList', 'VerticalCurvedList', 'VerticalEquation', 'VerticalPictureAccentList', 'VerticalPictureList', 'VerticalProcess', 'Custom', 'PictureOrganizationChart'])
      unless validator.valid?(layout)
        fail ArgumentError, 'invalid value for "layout", must be one of #{validator.allowable_values}.'
      end
      @layout = layout
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quick_style Object to be assigned
    def quick_style=(quick_style)
      validator = EnumAttributeValidator.new('String', ['SimpleFill', 'WhiteOutline', 'SubtleEffect', 'ModerateEffect', 'IntenceEffect', 'Polished', 'Inset', 'Cartoon', 'Powder', 'BrickScene', 'FlatScene', 'MetallicScene', 'SunsetScene', 'BirdsEyeScene'])
      unless validator.valid?(quick_style)
        fail ArgumentError, 'invalid value for "quick_style", must be one of #{validator.allowable_values}.'
      end
      @quick_style = quick_style
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color_style Object to be assigned
    def color_style=(color_style)
      validator = EnumAttributeValidator.new('String', ['Dark1Outline', 'Dark2Outline', 'DarkFill', 'ColorfulAccentColors', 'ColorfulAccentColors2to3', 'ColorfulAccentColors3to4', 'ColorfulAccentColors4to5', 'ColorfulAccentColors5to6', 'ColoredOutlineAccent1', 'ColoredFillAccent1', 'GradientRangeAccent1', 'GradientLoopAccent1', 'TransparentGradientRangeAccent1', 'ColoredOutlineAccent2', 'ColoredFillAccent2', 'GradientRangeAccent2', 'GradientLoopAccent2', 'TransparentGradientRangeAccent2', 'ColoredOutlineAccent3', 'ColoredFillAccent3', 'GradientRangeAccent3', 'GradientLoopAccent3', 'TransparentGradientRangeAccent3', 'ColoredOutlineAccent4', 'ColoredFillAccent4', 'GradientRangeAccent4', 'GradientLoopAccent4', 'TransparentGradientRangeAccent4', 'ColoredOutlineAccent5', 'ColoredFillAccent5', 'GradientRangeAccent5', 'GradientLoopAccent5', 'TransparentGradientRangeAccent5', 'ColoredOutlineAccent6', 'ColoredFillAccent6', 'GradientRangeAccent6', 'GradientLoopAccent6', 'TransparentGradientRangeAccent6'])
      unless validator.valid?(color_style)
        fail ArgumentError, 'invalid value for "color_style", must be one of #{validator.allowable_values}.'
      end
      @color_style = color_style
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
          layout == o.layout &&
          quick_style == o.quick_style &&
          color_style == o.color_style &&
          nodes == o.nodes &&
          is_reversed == o.is_reversed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, layout, quick_style, color_style, nodes, is_reversed].hash
    end
  end
end
