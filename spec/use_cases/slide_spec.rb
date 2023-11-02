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
  describe 'Slide' do
    it "get slides" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slides(file_name, password, folder_name)
        expect(slides.slide_list.length).to eq(9)
    end

    it "get slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slide = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slides(file_name, password, folder_name)
        expect(slide).not_to eq(nil)
    end

    it "create slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_slide(file_name, "layoutSlides/3", 1, password, folder_name)
        expect(slides.slide_list.length).to eq(10)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_slide(file_name, "layoutSlides/3", nil, password, folder_name)
        expect(slides.slide_list.length).to eq(11)
    end

    it "copy slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 3
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_slide(file_name, slide_index, nil, nil, nil, nil, password, folder_name)
        expect(slides.slide_list.length).to eq(10)
    end

    it "copy slide from source" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        source_file_name = "TemplateCV.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + source_file_name, folder_name + "/" + source_file_name)

        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_slide(file_name, slide_index, 1, folder_name + "/" + source_file_name, 
            nil, nil, password, folder_name)
        expect(slides.slide_list.length).to eq(10)
    end

    it "move slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.move_slide(file_name, slide_index, 2, password, folder_name)
        expect(slides.slide_list.length).to eq(9)
    end

    it "reorder slides" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        old_positions = [1,2,3,4,5,6]
        new_positions = [6,5,4,3,2,1]

        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.reorder_slides(file_name, old_positions, new_positions, password, folder_name)
        expect(slides.slide_list.length).to eq(9)
    end

    it "update slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        layout_slide_href = "layoutSlides/3"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        dto = AsposeSlidesCloud::Slide.new
        dto.layout_slide = AsposeSlidesCloud::ResourceUri.new
        dto.layout_slide.href = layout_slide_href

        slide = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_slide(file_name, slide_index, dto, password, folder_name)
        expect(slide.layout_slide.href.include? layout_slide_href).to eq(true)
    end

    it "delete slides" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_slides(file_name, nil, password, folder_name)
        expect(slides.slide_list.length).to eq(1)
    end

    it "delete slides indexes" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_slides(file_name, [1,3,5], password, folder_name)
        expect(slides.slide_list.length).to eq(6)
    end

    it "delete slide" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_slide(file_name, slide_index, password, folder_name)
        expect(slides.slide_list.length).to eq(8)
    end

    it "get background" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 5
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_background(file_name, slide_index, password, folder_name)
        expect(response.fill_format).to be_kind_of(AsposeSlidesCloud::SolidFill)
    end

    it "set background" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        dto = AsposeSlidesCloud::SlideBackground.new
        dto.fill_format = AsposeSlidesCloud::SolidFill.new
        dto.fill_format.color = "#FFF5FF8A"

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.set_background(file_name, slide_index, dto, password, folder_name)
        expect(response.fill_format).to be_kind_of(AsposeSlidesCloud::SolidFill)
        expect(response.fill_format.color).to eq(dto.fill_format.color)
    end

    it "set background color" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 1
        color = "#FFF5FF8A"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.set_background_color(file_name, slide_index, color, password, folder_name)
        expect(response.fill_format).to be_kind_of(AsposeSlidesCloud::SolidFill)
        expect(response.fill_format.color).to eq(color)
    end

    it "delete background color" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 5
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_background(file_name, slide_index, password, folder_name)
        expect(response.fill_format).to be_kind_of(AsposeSlidesCloud::NoFill)
    end
  end
end