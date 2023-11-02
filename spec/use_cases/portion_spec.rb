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
    describe 'Portion' do
        it "get portions" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portions(file_name, slide_index, shape_index, paragraph_index, password, folder_name)
            expect(response.items.length).to eq(2)
        end

        it "get subshape portions" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portions(file_name, slide_index, shape_index, paragraph_index, password, folder_name, "", sub_shape)
            expect(response.items.length).to eq(2)
        end

        it "get portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion(file_name, slide_index, shape_index, paragraph_index, portion_index,
                 password, folder_name)
            expect(response.text.include? "portion 1").to eq(true)
        end

        it "get subshape portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion(file_name, slide_index, shape_index, 
                paragraph_index, portion_index, password, folder_name, "", sub_shape)
            expect(response.text.include? "portion 1").to eq(true)
        end

        it "create portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Portion.new
            dto.text = "new portion text"
            dto.font_bold = "True"
            dto.font_height = 20
            dto.latin_font = "Arial"
            dto.fill_format = AsposeSlidesCloud::SolidFill.new
            dto.fill_format.color = "#FFF5FF8A"

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_portion(file_name, slide_index, shape_index, paragraph_index, dto, nil,
                 password, folder_name)
            expect(response.text).to eq(dto.text)
            expect(response.font_bold).to eq(dto.font_bold)
            expect(response.font_height).to eq(dto.font_height)
            expect(response.latin_font).to eq(dto.latin_font)
            expect(response.fill_format.type).to eq("Solid")
        end

        it "create subshape portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Portion.new
            dto.text = "new portion text"
            dto.font_bold = "True"
            dto.font_height = 20
            dto.latin_font = "Arial"
            dto.fill_format = AsposeSlidesCloud::SolidFill.new
            dto.fill_format.color = "#FFF5FF8A"

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_portion(file_name, slide_index, shape_index, 
                paragraph_index, dto, nil, password, folder_name, "", sub_shape)
            expect(response.text).to eq(dto.text)
            expect(response.font_bold).to eq(dto.font_bold)
            expect(response.font_height).to eq(dto.font_height)
            expect(response.latin_font).to eq(dto.latin_font)
            expect(response.fill_format.type).to eq("Solid")
        end

        it "update portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Portion.new
            dto.text = "new portion text"
            dto.font_bold = "True"
            dto.font_height = 20
            dto.latin_font = "Arial"
            dto.fill_format = AsposeSlidesCloud::SolidFill.new
            dto.fill_format.color = "#FFF5FF8A"

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_portion(file_name, slide_index, shape_index, paragraph_index, 
                portion_index, dto, password, folder_name)
            expect(response.text).to eq(dto.text)
            expect(response.font_bold).to eq(dto.font_bold)
            expect(response.font_height).to eq(dto.font_height)
            expect(response.latin_font).to eq(dto.latin_font)
            expect(response.fill_format.type).to eq("Solid")
        end

        it "update subshape portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Portion.new
            dto.text = "new portion text"
            dto.font_bold = "True"
            dto.font_height = 20
            dto.latin_font = "Arial"
            dto.fill_format = AsposeSlidesCloud::SolidFill.new
            dto.fill_format.color = "#FFF5FF8A"

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_portion(file_name, slide_index, shape_index, 
                paragraph_index, portion_index, dto, password, folder_name, "", sub_shape)
            expect(response.text).to eq(dto.text)
            expect(response.font_bold).to eq(dto.font_bold)
            expect(response.font_height).to eq(dto.font_height)
            expect(response.latin_font).to eq(dto.latin_font)
            expect(response.fill_format.type).to eq("Solid")
        end

        it "delete portions" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portions(file_name, slide_index, shape_index, paragraph_index, 
                nil, password, folder_name)
            expect(response.items.length).to eq(0)
        end

        it "delete portions indexes" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portions(file_name, slide_index, shape_index, paragraph_index, 
                [1], password, folder_name)
            expect(response.items.length).to eq(1)
        end

        it "delete subshape portions" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portions(file_name, slide_index, shape_index,
                 paragraph_index, nil, password, folder_name, "", sub_shape)
            expect(response.items.length).to eq(0)
        end

        it "delete subshape portions index" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portions(file_name, slide_index, shape_index,
                 paragraph_index, [1], password, folder_name, "", sub_shape)
            expect(response.items.length).to eq(1)
        end

        it "delete portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portion(file_name, slide_index, shape_index, paragraph_index, 
                portion_index, password, folder_name)
            expect(response.items.length).to eq(1)
        end

        it "delete subshape portion" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_portion(file_name, slide_index, shape_index, paragraph_index, 
                portion_index, password, folder_name, "", sub_shape)
            expect(response.items.length).to eq(1)
        end

        it "get portion rect" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion_rectangle(file_name, slide_index, shape_index, paragraph_index, 
                portion_index, password, folder_name)
            expect(response.x).not_to eq(0)
            expect(response.y).not_to eq(0)
            expect(response.width).not_to eq(0)
            expect(response.height).not_to eq(0)
        end

        it "get portion effective" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion_effective(file_name, slide_index, shape_index, paragraph_index, 
                portion_index, password, folder_name)
            expect(response.font_height).to eq(18)
        end

        it "get subshape portion effective" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 3
            sub_shape = "1"
            paragraph_index = 1
            portion_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion_effective(file_name, slide_index, shape_index,
                paragraph_index, portion_index, password, folder_name, "", sub_shape)
            expect(response.font_height).to eq(18)
        end
    end
end