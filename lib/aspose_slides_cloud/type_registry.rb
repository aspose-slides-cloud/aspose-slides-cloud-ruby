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

module AsposeSlidesCloud
  class TypeRegistry
    def self.subclass?(subclass_name, class_name)
      if subclass_name == class_name
        return true
      end
      type_hierarchy.each do |k, v|
        if v.to_s == class_name && subclass?(subclass_name, k.to_s)
          return true
        end
      end
      return false
    end

    def self.get_type(class_name, map)
      no_descendants = true
      type_hierarchy.each do |k, v|
        if v.to_s == class_name
          no_descendants = false
          newType = get_type(k.to_s, map)
          if newType != ""
            return newType
          end
        end
      end
      determiners = type_determiners[class_name.to_sym]
      is_good = false
      if (determiners && determiners.keys.length > 0) || no_descendants
        is_good = true
        determiners.each do |k, v|
          is_good_key = false
          if !map.nil?
            if !map[k].nil?
              is_good_key = v == map[k]
            else
              keyString = k.to_s
              keyString[0] = keyString[0].downcase
              if !map[keyString.to_sym].nil?
                is_good_key = v == map[keyString.to_sym]
              end
            end
          end
          is_good = is_good && is_good_key
        end
        if is_good
          return class_name
        end
      end
      return ""
    end

    def self.type_hierarchy
      {
        :'AccentElement' => :'MathElement',
        :'AddLayoutSlide' => :'Task',
        :'AddMasterSlide' => :'Task',
        :'AddShape' => :'Task',
        :'AddSlide' => :'Task',
        :'AlphaBiLevelEffect' => :'ImageTransformEffect',
        :'AlphaCeilingEffect' => :'ImageTransformEffect',
        :'AlphaFloorEffect' => :'ImageTransformEffect',
        :'AlphaInverseEffect' => :'ImageTransformEffect',
        :'AlphaModulateEffect' => :'ImageTransformEffect',
        :'AlphaModulateFixedEffect' => :'ImageTransformEffect',
        :'AlphaReplaceEffect' => :'ImageTransformEffect',
        :'ArcToPathSegment' => :'PathSegment',
        :'ArrayElement' => :'MathElement',
        :'ShapeBase' => :'ResourceBase',
        :'GeometryShape' => :'ShapeBase',
        :'AudioFrame' => :'GeometryShape',
        :'BarElement' => :'MathElement',
        :'Base64InputFile' => :'InputFile',
        :'BiLevelEffect' => :'ImageTransformEffect',
        :'BlockElement' => :'MathElement',
        :'BlurImageEffect' => :'ImageTransformEffect',
        :'BorderBoxElement' => :'MathElement',
        :'BoxElement' => :'MathElement',
        :'ScatterChartDataPoint' => :'DataPoint',
        :'BubbleChartDataPoint' => :'ScatterChartDataPoint',
        :'XYSeries' => :'Series',
        :'BubbleSeries' => :'XYSeries',
        :'Chart' => :'ShapeBase',
        :'ClosePathSegment' => :'PathSegment',
        :'ColorChangeEffect' => :'ImageTransformEffect',
        :'ColorReplaceEffect' => :'ImageTransformEffect',
        :'ColorScheme' => :'ResourceBase',
        :'CommentAuthors' => :'ResourceBase',
        :'Connector' => :'GeometryShape',
        :'CubicBezierToPathSegment' => :'PathSegment',
        :'DelimiterElement' => :'MathElement',
        :'Document' => :'ResourceBase',
        :'DocumentProperties' => :'ResourceBase',
        :'DocumentProperty' => :'ResourceBase',
        :'DocumentReplaceResult' => :'Document',
        :'DuotoneEffect' => :'ImageTransformEffect',
        :'FileVersion' => :'StorageFile',
        :'FillOverlayImageEffect' => :'ImageTransformEffect',
        :'FontScheme' => :'ResourceBase',
        :'FormatScheme' => :'ResourceBase',
        :'FractionElement' => :'MathElement',
        :'FunctionElement' => :'MathElement',
        :'ImageExportOptionsBase' => :'ExportOptions',
        :'GifExportOptions' => :'ImageExportOptionsBase',
        :'GradientFill' => :'FillFormat',
        :'GraphicalObject' => :'ShapeBase',
        :'GrayScaleEffect' => :'ImageTransformEffect',
        :'GroupShape' => :'ShapeBase',
        :'GroupingCharacterElement' => :'MathElement',
        :'HandoutLayoutingOptions' => :'SlidesLayoutOptions',
        :'HeaderFooter' => :'ResourceBase',
        :'HslEffect' => :'ImageTransformEffect',
        :'Html5ExportOptions' => :'ExportOptions',
        :'HtmlExportOptions' => :'ExportOptions',
        :'Image' => :'ResourceBase',
        :'ImageExportOptions' => :'ImageExportOptionsBase',
        :'Images' => :'ResourceBase',
        :'LayoutSlide' => :'ResourceBase',
        :'LayoutSlides' => :'ResourceBase',
        :'LeftSubSuperscriptElement' => :'MathElement',
        :'LimitElement' => :'MathElement',
        :'LineToPathSegment' => :'PathSegment',
        :'Literals' => :'DataSource',
        :'LuminanceEffect' => :'ImageTransformEffect',
        :'MarkdownExportOptions' => :'ExportOptions',
        :'MasterSlide' => :'ResourceBase',
        :'MasterSlides' => :'ResourceBase',
        :'MatrixElement' => :'MathElement',
        :'Merge' => :'Task',
        :'MoveToPathSegment' => :'PathSegment',
        :'NaryOperatorElement' => :'MathElement',
        :'NoFill' => :'FillFormat',
        :'NotesCommentsLayoutingOptions' => :'SlidesLayoutOptions',
        :'NotesSlide' => :'ResourceBase',
        :'NotesSlideHeaderFooter' => :'ResourceBase',
        :'OleObjectFrame' => :'ShapeBase',
        :'OneValueChartDataPoint' => :'DataPoint',
        :'OneValueSeries' => :'Series',
        :'Paragraph' => :'ResourceBase',
        :'Paragraphs' => :'ResourceBase',
        :'PathInputFile' => :'InputFile',
        :'PathOutputFile' => :'OutputFile',
        :'PatternFill' => :'FillFormat',
        :'PdfExportOptions' => :'ExportOptions',
        :'PictureFill' => :'FillFormat',
        :'PictureFrame' => :'GeometryShape',
        :'Placeholder' => :'ResourceBase',
        :'Placeholders' => :'ResourceBase',
        :'Portion' => :'ResourceBase',
        :'Portions' => :'ResourceBase',
        :'PptxExportOptions' => :'ExportOptions',
        :'ProtectionProperties' => :'ResourceBase',
        :'QuadraticBezierToPathSegment' => :'PathSegment',
        :'RadicalElement' => :'MathElement',
        :'RemoveShape' => :'Task',
        :'RemoveSlide' => :'Task',
        :'ReorderSlide' => :'Task',
        :'ReplaceText' => :'Task',
        :'RequestInputFile' => :'InputFile',
        :'ResetSlide' => :'Task',
        :'ResponseOutputFile' => :'OutputFile',
        :'RightSubSuperscriptElement' => :'MathElement',
        :'Save' => :'Task',
        :'SaveShape' => :'Task',
        :'SaveSlide' => :'Task',
        :'ScatterSeries' => :'XYSeries',
        :'Section' => :'ResourceBase',
        :'ZoomObject' => :'ShapeBase',
        :'SectionZoomFrame' => :'ZoomObject',
        :'Sections' => :'ResourceBase',
        :'Shape' => :'GeometryShape',
        :'Shapes' => :'ResourceBase',
        :'Slide' => :'ResourceBase',
        :'SlideAnimation' => :'ResourceBase',
        :'SlideBackground' => :'ResourceBase',
        :'SlideComment' => :'SlideCommentBase',
        :'SlideComments' => :'ResourceBase',
        :'SlideModernComment' => :'SlideCommentBase',
        :'SlideProperties' => :'ResourceBase',
        :'SlideReplaceResult' => :'Slide',
        :'SlideShowProperties' => :'ResourceBase',
        :'Slides' => :'ResourceBase',
        :'SmartArt' => :'ShapeBase',
        :'SmartArtShape' => :'GeometryShape',
        :'SolidFill' => :'FillFormat',
        :'SplitDocumentResult' => :'ResourceBase',
        :'SubscriptElement' => :'MathElement',
        :'SummaryZoomFrame' => :'ShapeBase',
        :'SummaryZoomSection' => :'SectionZoomFrame',
        :'SuperscriptElement' => :'MathElement',
        :'SvgExportOptions' => :'ExportOptions',
        :'SwfExportOptions' => :'ExportOptions',
        :'Table' => :'ShapeBase',
        :'TextElement' => :'MathElement',
        :'TextItems' => :'ResourceBase',
        :'Theme' => :'ResourceBase',
        :'TiffExportOptions' => :'ImageExportOptionsBase',
        :'TintEffect' => :'ImageTransformEffect',
        :'UpdateBackground' => :'Task',
        :'UpdateShape' => :'Task',
        :'VbaModule' => :'ResourceBase',
        :'VbaProject' => :'ResourceBase',
        :'VideoExportOptions' => :'ExportOptions',
        :'VideoFrame' => :'GeometryShape',
        :'ViewProperties' => :'ResourceBase',
        :'Workbook' => :'DataSource',
        :'XamlExportOptions' => :'ExportOptions',
        :'XpsExportOptions' => :'ExportOptions',
        :'ZoomFrame' => :'ZoomObject',
        
      }
    end

    def self.type_determiners
      {
        :'MathElement' => {  },
        :'AccentElement' => { :'Type' => 'Accent', },
        :'AccessPermissions' => {  },
        :'Task' => {  },
        :'AddLayoutSlide' => { :'Type' => 'AddLayoutSlide', },
        :'AddMasterSlide' => { :'Type' => 'AddMasterSlide', },
        :'AddShape' => { :'Type' => 'AddShape', },
        :'AddSlide' => { :'Type' => 'AddSlide', },
        :'ImageTransformEffect' => {  },
        :'AlphaBiLevelEffect' => { :'Type' => 'AlphaBiLevel', },
        :'AlphaCeilingEffect' => { :'Type' => 'AlphaCeiling', },
        :'AlphaFloorEffect' => { :'Type' => 'AlphaFloor', },
        :'AlphaInverseEffect' => { :'Type' => 'AlphaInverse', },
        :'AlphaModulateEffect' => { :'Type' => 'AlphaModulate', },
        :'AlphaModulateFixedEffect' => { :'Type' => 'AlphaModulateFixed', },
        :'AlphaReplaceEffect' => { :'Type' => 'AlphaReplace', },
        :'ApiInfo' => {  },
        :'PathSegment' => {  },
        :'ArcToPathSegment' => { :'Type' => 'ArcTo', },
        :'ArrayElement' => { :'Type' => 'Array', },
        :'ArrowHeadProperties' => {  },
        :'ResourceBase' => {  },
        :'ShapeBase' => {  },
        :'GeometryShape' => {  },
        :'AudioFrame' => { :'Type' => 'AudioFrame', },
        :'Axes' => {  },
        :'Axis' => {  },
        :'AxisType' => {  },
        :'BarElement' => { :'Type' => 'Bar', },
        :'InputFile' => {  },
        :'Base64InputFile' => { :'Type' => 'Base64', },
        :'BiLevelEffect' => { :'Type' => 'BiLevel', },
        :'BlockElement' => { :'Type' => 'Block', },
        :'BlurEffect' => {  },
        :'BlurImageEffect' => { :'Type' => 'Blur', },
        :'BorderBoxElement' => { :'Type' => 'BorderBox', },
        :'BoxElement' => { :'Type' => 'Box', },
        :'DataPoint' => {  },
        :'ScatterChartDataPoint' => { :'Type' => 'Scatter', },
        :'BubbleChartDataPoint' => { :'Type' => 'Bubble', },
        :'Series' => {  },
        :'XYSeries' => {  },
        :'BubbleSeries' => { :'DataPointType' => 'Bubble', },
        :'Camera' => {  },
        :'Chart' => { :'Type' => 'Chart', },
        :'ChartCategory' => {  },
        :'ChartLinesFormat' => {  },
        :'ChartSeriesGroup' => {  },
        :'ChartTitle' => {  },
        :'ChartWall' => {  },
        :'ChartWallType' => {  },
        :'ClosePathSegment' => { :'Type' => 'Close', },
        :'ColorChangeEffect' => { :'Type' => 'ColorChange', },
        :'ColorReplaceEffect' => { :'Type' => 'ColorReplace', },
        :'ColorScheme' => {  },
        :'CommentAuthor' => {  },
        :'CommentAuthors' => {  },
        :'CommonSlideViewProperties' => {  },
        :'Connector' => { :'Type' => 'Connector', },
        :'CubicBezierToPathSegment' => { :'Type' => 'CubicBezierTo', },
        :'CustomDashPattern' => {  },
        :'DataSource' => {  },
        :'DelimiterElement' => { :'Type' => 'Delimiter', },
        :'DiscUsage' => {  },
        :'Document' => {  },
        :'DocumentProperties' => {  },
        :'DocumentProperty' => {  },
        :'DocumentReplaceResult' => {  },
        :'DuotoneEffect' => { :'Type' => 'Duotone', },
        :'Effect' => {  },
        :'EffectFormat' => {  },
        :'EntityExists' => {  },
        :'Error' => {  },
        :'ErrorDetails' => {  },
        :'ExportFormat' => {  },
        :'ExportOptions' => {  },
        :'StorageFile' => {  },
        :'FileVersion' => {  },
        :'FileVersions' => {  },
        :'FilesList' => {  },
        :'FilesUploadResult' => {  },
        :'FillFormat' => {  },
        :'FillOverlayEffect' => {  },
        :'FillOverlayImageEffect' => { :'Type' => 'FillOverlay', },
        :'FontData' => {  },
        :'FontFallbackRule' => {  },
        :'FontScheme' => {  },
        :'FontSet' => {  },
        :'FontSubstRule' => {  },
        :'FontsData' => {  },
        :'FormatScheme' => {  },
        :'FractionElement' => { :'Type' => 'Fraction', },
        :'FunctionElement' => { :'Type' => 'Function', },
        :'GeometryPath' => {  },
        :'GeometryPaths' => {  },
        :'ImageExportOptionsBase' => {  },
        :'GifExportOptions' => { :'Format' => 'gif', },
        :'GlowEffect' => {  },
        :'GradientFill' => { :'Type' => 'Gradient', },
        :'GradientFillStop' => {  },
        :'GraphicalObject' => { :'Type' => 'GraphicalObject', },
        :'GrayScaleEffect' => { :'Type' => 'GrayScale', },
        :'GroupShape' => { :'Type' => 'GroupShape', },
        :'GroupingCharacterElement' => { :'Type' => 'GroupingCharacter', },
        :'SlidesLayoutOptions' => {  },
        :'HandoutLayoutingOptions' => { :'LayoutType' => 'Handout', },
        :'HeaderFooter' => {  },
        :'HslEffect' => { :'Type' => 'Hsl', },
        :'Html5ExportOptions' => { :'Format' => 'html5', },
        :'HtmlExportOptions' => { :'Format' => 'html', },
        :'Hyperlink' => {  },
        :'IShapeExportOptions' => {  },
        :'Image' => {  },
        :'ImageExportFormat' => {  },
        :'ImageExportOptions' => { :'Format' => 'image', },
        :'Images' => {  },
        :'InnerShadowEffect' => {  },
        :'Input' => {  },
        :'InteractiveSequence' => {  },
        :'LayoutSlide' => {  },
        :'LayoutSlides' => {  },
        :'LeftSubSuperscriptElement' => { :'Type' => 'LeftSubSuperscriptElement', },
        :'Legend' => {  },
        :'LightRig' => {  },
        :'LimitElement' => { :'Type' => 'Limit', },
        :'LineFormat' => {  },
        :'LineToPathSegment' => { :'Type' => 'LineTo', },
        :'Literals' => { :'Type' => 'Literals', },
        :'LuminanceEffect' => { :'Type' => 'Luminance', },
        :'MarkdownExportOptions' => { :'Format' => 'md', },
        :'MasterSlide' => {  },
        :'MasterSlides' => {  },
        :'MathFormat' => {  },
        :'MathParagraph' => {  },
        :'MatrixElement' => { :'Type' => 'Matrix', },
        :'Merge' => { :'Type' => 'Merge', },
        :'MergingSource' => {  },
        :'MoveToPathSegment' => { :'Type' => 'MoveTo', },
        :'NaryOperatorElement' => { :'Type' => 'NaryOperator', },
        :'NoFill' => { :'Type' => 'NoFill', },
        :'NormalViewRestoredProperties' => {  },
        :'NotesCommentsLayoutingOptions' => { :'LayoutType' => 'NotesComments', },
        :'NotesSlide' => {  },
        :'NotesSlideExportFormat' => {  },
        :'NotesSlideHeaderFooter' => {  },
        :'ObjectExist' => {  },
        :'OleObjectFrame' => { :'Type' => 'OleObjectFrame', },
        :'OneValueChartDataPoint' => { :'Type' => 'OneValue', },
        :'OneValueSeries' => { :'DataPointType' => 'OneValue', },
        :'Operation' => {  },
        :'OperationProgress' => {  },
        :'OrderedMergeRequest' => {  },
        :'OuterShadowEffect' => {  },
        :'OutputFile' => {  },
        :'Paragraph' => {  },
        :'ParagraphFormat' => {  },
        :'Paragraphs' => {  },
        :'PathInputFile' => { :'Type' => 'Path', },
        :'PathOutputFile' => { :'Type' => 'Path', },
        :'PatternFill' => { :'Type' => 'Pattern', },
        :'PdfExportOptions' => { :'Format' => 'pdf', },
        :'PictureFill' => { :'Type' => 'Picture', },
        :'PictureFrame' => { :'Type' => 'PictureFrame', },
        :'Pipeline' => {  },
        :'Placeholder' => {  },
        :'Placeholders' => {  },
        :'PlotArea' => {  },
        :'Portion' => {  },
        :'PortionFormat' => {  },
        :'Portions' => {  },
        :'PptxExportOptions' => { :'Format' => 'pptx', },
        :'PresentationToMerge' => {  },
        :'PresentationsMergeRequest' => {  },
        :'PresetShadowEffect' => {  },
        :'ProtectionProperties' => {  },
        :'QuadraticBezierToPathSegment' => { :'Type' => 'QuadBezierTo', },
        :'RadicalElement' => { :'Type' => 'Radical', },
        :'ReflectionEffect' => {  },
        :'RemoveShape' => { :'Type' => 'RemoveShape', },
        :'RemoveSlide' => { :'Type' => 'RemoveSlide', },
        :'ReorderSlide' => { :'Type' => 'ReoderSlide', },
        :'ReplaceText' => { :'Type' => 'ReplaceText', },
        :'RequestInputFile' => { :'Type' => 'Request', },
        :'ResetSlide' => { :'Type' => 'ResetSlide', },
        :'ResourceUri' => {  },
        :'ResponseOutputFile' => { :'Type' => 'Response', },
        :'RightSubSuperscriptElement' => { :'Type' => 'RightSubSuperscriptElement', },
        :'Save' => { :'Type' => 'Save', },
        :'SaveShape' => { :'Type' => 'SaveShape', },
        :'SaveSlide' => { :'Type' => 'SaveSlide', },
        :'ScatterSeries' => { :'DataPointType' => 'Scatter', },
        :'Section' => {  },
        :'ZoomObject' => {  },
        :'SectionZoomFrame' => { :'Type' => 'SectionZoomFrame', },
        :'Sections' => {  },
        :'SeriesMarker' => {  },
        :'Shape' => { :'Type' => 'Shape', },
        :'ShapeBevel' => {  },
        :'ShapeExportFormat' => {  },
        :'ShapeImageExportOptions' => {  },
        :'ShapeThumbnailBounds' => {  },
        :'ShapeType' => {  },
        :'Shapes' => {  },
        :'ShapesAlignmentType' => {  },
        :'Slide' => {  },
        :'SlideAnimation' => {  },
        :'SlideBackground' => {  },
        :'SlideCommentBase' => {  },
        :'SlideComment' => { :'Type' => 'Regular', },
        :'SlideComments' => {  },
        :'SlideExportFormat' => {  },
        :'SlideModernComment' => { :'Type' => 'Modern', },
        :'SlideProperties' => {  },
        :'SlideReplaceResult' => {  },
        :'SlideShowProperties' => {  },
        :'SlideShowTransition' => {  },
        :'Slides' => {  },
        :'SmartArt' => { :'Type' => 'SmartArt', },
        :'SmartArtNode' => {  },
        :'SmartArtShape' => { :'Type' => 'SmartArtShape', },
        :'SoftEdgeEffect' => {  },
        :'SolidFill' => { :'Type' => 'Solid', },
        :'SpecialSlideType' => {  },
        :'SplitDocumentResult' => {  },
        :'StorageExist' => {  },
        :'SubscriptElement' => { :'Type' => 'SubscriptElement', },
        :'SummaryZoomFrame' => { :'Type' => 'SummaryZoomFrame', },
        :'SummaryZoomSection' => { :'Type' => 'SummaryZoomSection', },
        :'SuperscriptElement' => { :'Type' => 'SuperscriptElement', },
        :'SvgExportOptions' => { :'Format' => 'svg', },
        :'SwfExportOptions' => { :'Format' => 'swf', },
        :'Table' => { :'Type' => 'Table', },
        :'TableCell' => {  },
        :'TableCellMergeOptions' => {  },
        :'TableCellSplitType' => {  },
        :'TableColumn' => {  },
        :'TableRow' => {  },
        :'TextBounds' => {  },
        :'TextElement' => { :'Type' => 'Text', },
        :'TextFrameFormat' => {  },
        :'TextItem' => {  },
        :'TextItems' => {  },
        :'Theme' => {  },
        :'ThreeDFormat' => {  },
        :'TiffExportOptions' => { :'Format' => 'tiff', },
        :'TintEffect' => { :'Type' => 'Tint', },
        :'UpdateBackground' => { :'Type' => 'UpdateBackground', },
        :'UpdateShape' => { :'Type' => 'UpdateShape', },
        :'VbaModule' => {  },
        :'VbaProject' => {  },
        :'VbaReference' => {  },
        :'VideoExportOptions' => { :'Format' => 'mpeg4', },
        :'VideoFrame' => { :'Type' => 'VideoFrame', },
        :'ViewProperties' => {  },
        :'Workbook' => { :'Type' => 'Workbook', },
        :'XamlExportOptions' => { :'Format' => 'xaml', },
        :'XpsExportOptions' => { :'Format' => 'xps', },
        :'ZoomFrame' => { :'Type' => 'ZoomFrame', },
      }
    end
  end
end
