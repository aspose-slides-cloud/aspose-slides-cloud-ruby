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
  describe 'Shape Format' do
    it 'line' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slideIndex = 1
      shapeIndex = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Shape.new
      line_format = AsposeSlidesCloud::LineFormat.new
      line_format.style = "ThickThin"
      line_format.width = 7
      line_format.dash_style = "Dash"
      dto.line_format = line_format
      shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slideIndex, shapeIndex, dto, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slideIndex, shapeIndex, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      expect(shape.line_format.width).to eq(dto.line_format.width)
    end

    it 'fill' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slideIndex = 1
      shapeIndex = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Shape.new
      fill_format = AsposeSlidesCloud::SolidFill.new
      fill_format.color = "#FFFFFF00"
      dto.fill_format = fill_format
      shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slideIndex, shapeIndex, dto, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slideIndex, shapeIndex, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      expect(shape.fill_format).to be_kind_of(AsposeSlidesCloud::SolidFill)
      expect(shape.fill_format.color).to eq(dto.fill_format.color)
    end

    it 'effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slideIndex = 1
      shapeIndex = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Shape.new
      effect_format = AsposeSlidesCloud::EffectFormat.new
      inner_shadow = AsposeSlidesCloud::InnerShadowEffect.new
      inner_shadow.direction = 35
      inner_shadow.blur_radius = 30
      inner_shadow.distance = 40
      inner_shadow.shadow_color = "#FFFFFF00"
      effect_format.inner_shadow = inner_shadow
      dto.effect_format = effect_format
      shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slideIndex, shapeIndex, dto, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slideIndex, shapeIndex, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      expect(shape.effect_format.inner_shadow.direction).to eq(dto.effect_format.inner_shadow.direction)
    end

    it '3d' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slideIndex = 1
      shapeIndex = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Shape.new
      three_d_format = AsposeSlidesCloud::ThreeDFormat.new
      three_d_format.depth = 4

      bevel_top = AsposeSlidesCloud::ShapeBevel.new
      bevel_top.bevel_type = "Circle"
      bevel_top.height = 6
      bevel_top.width = 6
      three_d_format.bevel_top = bevel_top

      camera = AsposeSlidesCloud::Camera.new
      camera.camera_type = "OrthographicFront"
      three_d_format.camera = camera

      light_rig = AsposeSlidesCloud::LightRig.new
      light_rig.light_type = "ThreePt"
      light_rig.direction = "Top"
      three_d_format.light_rig = light_rig
      dto.three_d_format = three_d_format
      shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slideIndex, shapeIndex, dto, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slideIndex, shapeIndex, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::Shape)
      expect(shape.three_d_format.depth).to eq(dto.three_d_format.depth)
    end
  end
end
