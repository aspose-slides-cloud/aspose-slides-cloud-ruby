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
  describe 'Hyperlink' do
    it 'get shape' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, 2, 2, "password", folder_name)
      expect(shape.hyperlink_click).to be_truthy
      expect(shape.hyperlink_click.action_type).to eq("Hyperlink")
      expect(shape.hyperlink_mouse_over).not_to be_truthy
    end

    it 'get portion' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      portion = AsposeSlidesCloud::SpecUtils.api.get_portion(file_name, 2, 1, 1, 2, "password", folder_name)
      expect(portion.hyperlink_click).not_to be_truthy
      expect(portion.hyperlink_mouse_over).to be_truthy
      expect(portion.hyperlink_mouse_over.action_type).to eq("JumpLastSlide")
    end

    it 'create shape' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      shape = AsposeSlidesCloud::Shape.new
      hyperlink = AsposeSlidesCloud::Hyperlink.new
      hyperlink.action_type = "Hyperlink"
      hyperlink.external_url = "https://docs.aspose.cloud/slides"
      shape.hyperlink_click = hyperlink
      updated_shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, 2, 2, shape, "password", folder_name)
      expect(updated_shape.hyperlink_click).to be_truthy
      expect(updated_shape.hyperlink_click.external_url).to eq(shape.hyperlink_click.external_url)
    end

    it 'create portion' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Portion.new
      dto.text = "Link text"
      hyperlink = AsposeSlidesCloud::Hyperlink.new
      hyperlink.action_type = "JumpLastSlide"
      dto.hyperlink_mouse_over = hyperlink
      updated_portion = AsposeSlidesCloud::SpecUtils.api.create_portion(file_name, 1, 1, 1, dto, nil, "password", folder_name)
      expect(updated_portion.hyperlink_mouse_over).to be_truthy
      expect(updated_portion.hyperlink_mouse_over.action_type).to eq(dto.hyperlink_mouse_over.action_type)
    end

    it 'delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      shape = AsposeSlidesCloud::PictureFrame.new
      hyperlink = AsposeSlidesCloud::Hyperlink.new
      hyperlink.is_disabled = true
      shape.hyperlink_click = hyperlink
      updated_shape = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, 2, 2, shape, "password", folder_name)
      expect(updated_shape.hyperlink_click).not_to be_truthy
    end
  end
end
