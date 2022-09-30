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

require 'spec_helper'

describe 'UseCases' do
  describe 'Text format' do
    it "text format 3d" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        dto = AsposeSlidesCloud::Shape.new
        dto.shape_type = "Rectangle"
        dto.x = 100
        dto.y = 100
        dto.height = 100
        dto.width = 200
        dto.text = "Sample text"

        dto.text_frame_format = AsposeSlidesCloud::TextFrameFormat.new
        dto.text_frame_format.transform  = "ArchUpPour"

        threeDFormat = AsposeSlidesCloud::ThreeDFormat.new
        threeDFormat.bevel_bottom = AsposeSlidesCloud::ShapeBevel.new
        threeDFormat.bevel_bottom.bevel_type = "Circle"
        threeDFormat.bevel_bottom.height = 3.5
        threeDFormat.bevel_bottom.width = 3.5
        threeDFormat.bevel_top = AsposeSlidesCloud::ShapeBevel.new
        threeDFormat.bevel_top.bevel_type = "Circle"
        threeDFormat.bevel_top.height = 4
        threeDFormat.bevel_top.width = 4
        threeDFormat.extrusion_color = "#FF008000"
        threeDFormat.extrusion_height = 6
        threeDFormat.contour_color = "#FF25353D"
        threeDFormat.contour_width = 1.5
        threeDFormat.depth = 3
        threeDFormat.material = "Plastic"
        threeDFormat.light_rig = AsposeSlidesCloud::LightRig.new
        #threeDFormat.light_rig.light_type = "Balanced"
        threeDFormat.light_rig.direction = "Top"
        threeDFormat.light_rig.x_rotation = 0
        threeDFormat.light_rig.y_rotation = 0
        threeDFormat.light_rig.z_rotation = 40
        #threeDFormat.camera = AsposeSlidesCloud::Camera.new
        #threeDFormat.camera_type = "PerspectiveContrastingRightFacing"
        dto.text_frame_format.three_d_format = threeDFormat;

        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, dto, nil, nil, password, folder_name)
        expect(result).to be_kind_of(AsposeSlidesCloud::Shape)
    end
  end
end