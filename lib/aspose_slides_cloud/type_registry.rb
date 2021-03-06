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
    def self.get_type(class_name, map)
      type_hierarchy.each do |k, v|
        if v.to_s == class_name
          newType = get_type(k.to_s, map)
          if newType != ""
            return newType
          end
        end
      end
      determiners = type_determiners[class_name.to_sym]
      if determiners
        is_good = true
        determiners.each do |k, v|
          is_good_key = false
          if !map[k].nil?
            is_good_key = v == map[k]
          else
            keyString = k.to_s
            keyString[0] = keyString[0].downcase
            if !map[keyString.to_sym].nil?
              is_good_key = v == map[keyString.to_sym]
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
        :'AddLayoutSlide' => :'Task',
        :'AddMasterSlide' => :'Task',
        :'AddShape' => :'Task',
        :'AddSlide' => :'Task',
        :'Base64InputFile' => :'InputFile',
        :'BubbleSeries' => :'Series',
        :'ColorScheme' => :'ResourceBase',
        :'Document' => :'ResourceBase',
        :'DocumentProperties' => :'ResourceBase',
        :'DocumentProperty' => :'ResourceBase',
        :'FileVersion' => :'StorageFile',
        :'FontScheme' => :'ResourceBase',
        :'FormatScheme' => :'ResourceBase',
        :'GradientFill' => :'FillFormat',
        :'HeaderFooter' => :'ResourceBase',
        :'HtmlExportOptions' => :'ExportOptions',
        :'Image' => :'ResourceBase',
        :'ImageExportOptions' => :'ExportOptions',
        :'Images' => :'ResourceBase',
        :'LayoutSlide' => :'ResourceBase',
        :'LayoutSlides' => :'ResourceBase',
        :'MasterSlide' => :'ResourceBase',
        :'MasterSlides' => :'ResourceBase',
        :'Merge' => :'Task',
        :'NoFill' => :'FillFormat',
        :'NotesSlide' => :'ResourceBase',
        :'NotesSlideHeaderFooter' => :'ResourceBase',
        :'OneValueChartDataPoint' => :'DataPoint',
        :'OneValueSeries' => :'Series',
        :'Paragraph' => :'ResourceBase',
        :'Paragraphs' => :'ResourceBase',
        :'PathInputFile' => :'InputFile',
        :'PathOutputFile' => :'OutputFile',
        :'PatternFill' => :'FillFormat',
        :'PdfExportOptions' => :'ExportOptions',
        :'PictureFill' => :'FillFormat',
        :'Placeholder' => :'ResourceBase',
        :'Placeholders' => :'ResourceBase',
        :'Portion' => :'ResourceBase',
        :'Portions' => :'ResourceBase',
        :'PptxExportOptions' => :'ExportOptions',
        :'ProtectionProperties' => :'ResourceBase',
        :'RemoveShape' => :'Task',
        :'RemoveSlide' => :'Task',
        :'ReorderSlide' => :'Task',
        :'ReplaceText' => :'Task',
        :'RequestInputFile' => :'InputFile',
        :'ResetSlide' => :'Task',
        :'ResponseOutputFile' => :'OutputFile',
        :'Save' => :'Task',
        :'SaveShape' => :'Task',
        :'SaveSlide' => :'Task',
        :'ScatterChartDataPoint' => :'DataPoint',
        :'ScatterSeries' => :'Series',
        :'Section' => :'ResourceBase',
        :'Sections' => :'ResourceBase',
        :'ShapeBase' => :'ResourceBase',
        :'Shapes' => :'ResourceBase',
        :'Slide' => :'ResourceBase',
        :'SlideAnimation' => :'ResourceBase',
        :'SlideBackground' => :'ResourceBase',
        :'SlideComments' => :'ResourceBase',
        :'SlideProperties' => :'ResourceBase',
        :'Slides' => :'ResourceBase',
        :'SolidFill' => :'FillFormat',
        :'SplitDocumentResult' => :'ResourceBase',
        :'SvgExportOptions' => :'ExportOptions',
        :'SwfExportOptions' => :'ExportOptions',
        :'TextItems' => :'ResourceBase',
        :'Theme' => :'ResourceBase',
        :'TiffExportOptions' => :'ExportOptions',
        :'UpdateBackground' => :'Task',
        :'UpdateShape' => :'Task',
        :'ViewProperties' => :'ResourceBase',
        :'XpsExportOptions' => :'ExportOptions',
        :'BoxAndWhiskerSeries' => :'OneValueSeries',
        :'BubbleChartDataPoint' => :'ScatterChartDataPoint',
        :'Chart' => :'ShapeBase',
        :'DocumentReplaceResult' => :'Document',
        :'GeometryShape' => :'ShapeBase',
        :'GraphicalObject' => :'ShapeBase',
        :'GroupShape' => :'ShapeBase',
        :'OleObjectFrame' => :'ShapeBase',
        :'SlideReplaceResult' => :'Slide',
        :'SmartArt' => :'ShapeBase',
        :'Table' => :'ShapeBase',
        :'WaterfallChartDataPoint' => :'OneValueChartDataPoint',
        :'WaterfallSeries' => :'OneValueSeries',
        :'AudioFrame' => :'GeometryShape',
        :'Connector' => :'GeometryShape',
        :'PictureFrame' => :'GeometryShape',
        :'Shape' => :'GeometryShape',
        :'SmartArtShape' => :'GeometryShape',
        :'VideoFrame' => :'GeometryShape',
        
      }
    end

    def self.type_determiners
      {
        :'ApiInfo' => {  },
        :'ArrowHeadProperties' => {  },
        :'Axes' => {  },
        :'Axis' => {  },
        :'BlurEffect' => {  },
        :'ChartCategory' => {  },
        :'ChartTitle' => {  },
        :'ChartWall' => {  },
        :'CommonSlideViewProperties' => {  },
        :'CustomDashPattern' => {  },
        :'DataPoint' => {  },
        :'DiscUsage' => {  },
        :'Effect' => {  },
        :'EffectFormat' => {  },
        :'EntityExists' => {  },
        :'Error' => {  },
        :'ErrorDetails' => {  },
        :'ExportFormat' => {  },
        :'ExportOptions' => {  },
        :'FileVersions' => {  },
        :'FilesList' => {  },
        :'FilesUploadResult' => {  },
        :'FillFormat' => {  },
        :'FillOverlayEffect' => {  },
        :'FontSet' => {  },
        :'GlowEffect' => {  },
        :'GradientFillStop' => {  },
        :'IShapeExportOptions' => {  },
        :'ImageExportFormat' => {  },
        :'InnerShadowEffect' => {  },
        :'Input' => {  },
        :'InputFile' => {  },
        :'InteractiveSequence' => {  },
        :'Legend' => {  },
        :'LineFormat' => {  },
        :'MergingSource' => {  },
        :'NormalViewRestoredProperties' => {  },
        :'NotesSlideExportFormat' => {  },
        :'ObjectExist' => {  },
        :'OrderedMergeRequest' => {  },
        :'OuterShadowEffect' => {  },
        :'OutputFile' => {  },
        :'Pipeline' => {  },
        :'PlotArea' => {  },
        :'PresentationToMerge' => {  },
        :'PresentationsMergeRequest' => {  },
        :'PresetShadowEffect' => {  },
        :'ReflectionEffect' => {  },
        :'ResourceBase' => {  },
        :'ResourceUri' => {  },
        :'Series' => {  },
        :'SeriesMarker' => {  },
        :'ShapeExportFormat' => {  },
        :'ShapeImageExportOptions' => {  },
        :'ShapeThumbnailBounds' => {  },
        :'ShapesAlignmentType' => {  },
        :'SlideComment' => {  },
        :'SlideExportFormat' => {  },
        :'SmartArtNode' => {  },
        :'SoftEdgeEffect' => {  },
        :'StorageExist' => {  },
        :'StorageFile' => {  },
        :'TableCell' => {  },
        :'TableColumn' => {  },
        :'TableRow' => {  },
        :'Task' => {  },
        :'TextItem' => {  },
        :'AddLayoutSlide' => { :'Type' => "AddLayoutSlide", },
        :'AddMasterSlide' => { :'Type' => "AddMasterSlide", },
        :'AddShape' => { :'Type' => "AddShape", },
        :'AddSlide' => { :'Type' => "AddSlide", },
        :'Base64InputFile' => { :'Type' => "Base64", },
        :'BubbleSeries' => { :'DataPointType' => "Bubble", },
        :'ColorScheme' => {  },
        :'Document' => {  },
        :'DocumentProperties' => {  },
        :'DocumentProperty' => {  },
        :'FileVersion' => {  },
        :'FontScheme' => {  },
        :'FormatScheme' => {  },
        :'GradientFill' => { :'Type' => "Gradient", },
        :'HeaderFooter' => {  },
        :'HtmlExportOptions' => { :'Format' => "html", },
        :'Image' => {  },
        :'ImageExportOptions' => { :'Format' => "image", },
        :'Images' => {  },
        :'LayoutSlide' => {  },
        :'LayoutSlides' => {  },
        :'MasterSlide' => {  },
        :'MasterSlides' => {  },
        :'Merge' => { :'Type' => "Merge", },
        :'NoFill' => { :'Type' => "NoFill", },
        :'NotesSlide' => {  },
        :'NotesSlideHeaderFooter' => {  },
        :'OneValueChartDataPoint' => {  },
        :'OneValueSeries' => { :'DataPointType' => "OneValue", },
        :'Paragraph' => {  },
        :'Paragraphs' => {  },
        :'PathInputFile' => { :'Type' => "Path", },
        :'PathOutputFile' => { :'Type' => "Path", },
        :'PatternFill' => { :'Type' => "Pattern", },
        :'PdfExportOptions' => { :'Format' => "pdf", },
        :'PictureFill' => { :'Type' => "Picture", },
        :'Placeholder' => {  },
        :'Placeholders' => {  },
        :'Portion' => {  },
        :'Portions' => {  },
        :'PptxExportOptions' => { :'Format' => "pptx", },
        :'ProtectionProperties' => {  },
        :'RemoveShape' => { :'Type' => "RemoveShape", },
        :'RemoveSlide' => { :'Type' => "RemoveSlide", },
        :'ReorderSlide' => { :'Type' => "ReoderSlide", },
        :'ReplaceText' => { :'Type' => "ReplaceText", },
        :'RequestInputFile' => { :'Type' => "Request", },
        :'ResetSlide' => { :'Type' => "ResetSlide", },
        :'ResponseOutputFile' => { :'Type' => "Response", },
        :'Save' => { :'Type' => "Save", },
        :'SaveShape' => { :'Type' => "SaveShape", },
        :'SaveSlide' => { :'Type' => "SaveSlide", },
        :'ScatterChartDataPoint' => {  },
        :'ScatterSeries' => { :'DataPointType' => "Scatter", },
        :'Section' => {  },
        :'Sections' => {  },
        :'ShapeBase' => {  },
        :'Shapes' => {  },
        :'Slide' => {  },
        :'SlideAnimation' => {  },
        :'SlideBackground' => {  },
        :'SlideComments' => {  },
        :'SlideProperties' => {  },
        :'Slides' => {  },
        :'SolidFill' => { :'Type' => "Solid", },
        :'SplitDocumentResult' => {  },
        :'SvgExportOptions' => { :'Format' => "svg", },
        :'SwfExportOptions' => { :'Format' => "swf", },
        :'TextItems' => {  },
        :'Theme' => {  },
        :'TiffExportOptions' => { :'Format' => "tiff", },
        :'UpdateBackground' => { :'Type' => "UpdateBackground", },
        :'UpdateShape' => { :'Type' => "UpdateShape", },
        :'ViewProperties' => {  },
        :'XpsExportOptions' => { :'Format' => "xps", },
        :'BoxAndWhiskerSeries' => { :'DataPointType' => "OneValue", },
        :'BubbleChartDataPoint' => {  },
        :'Chart' => { :'Type' => "Chart", },
        :'DocumentReplaceResult' => {  },
        :'GeometryShape' => {  },
        :'GraphicalObject' => { :'Type' => "GraphicalObject", },
        :'GroupShape' => { :'Type' => "GroupShape", },
        :'OleObjectFrame' => { :'Type' => "OleObjectFrame", },
        :'SlideReplaceResult' => {  },
        :'SmartArt' => { :'Type' => "SmartArt", },
        :'Table' => { :'Type' => "Table", },
        :'WaterfallChartDataPoint' => {  },
        :'WaterfallSeries' => { :'DataPointType' => "OneValue", },
        :'AudioFrame' => { :'Type' => "AudioFrame", },
        :'Connector' => { :'Type' => "Connector", },
        :'PictureFrame' => { :'Type' => "PictureFrame", },
        :'Shape' => { :'Type' => "Shape", },
        :'SmartArtShape' => { :'Type' => "SmartArtShape", },
        :'VideoFrame' => { :'Type' => "VideoFrame", },
      }
    end
  end
end
