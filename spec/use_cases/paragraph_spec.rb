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
    describe 'Paragraph' do
        it "get paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_paragraph(file_name, slide_index, shape_index, paragraph_index, password, folder_name)
            expect(response.portion_list.length).to eq(2)
        end

        it "get paragraphs" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_paragraphs(file_name, slide_index, shape_index, password, folder_name)
            expect(response.paragraph_links.length).to eq(2)
        end

        it "get subshape paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_subshape_paragraph(file_name, slide_index, "3/shapes", shape_index, paragraph_index, password, folder_name)
            expect(response.portion_list.length).to eq(2)
        end
        
        it "get subshape paragraphs" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_subshape_paragraphs(file_name, slide_index, "3/shapes", shape_index, password, folder_name)
            expect(response.paragraph_links.length).to eq(2)
        end

        it "create paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Paragraph.new
            dto.margin_left = 2
            dto.margin_right = 2
            dto.alignment = "Center"

            response = AsposeSlidesCloud::SpecUtils.api.create_paragraph(file_name, slide_index, shape_index, dto, nil, password, folder_name)
            expect(response.margin_left).to eq(dto.margin_left)
            expect(response.margin_right).to eq(dto.margin_right)
            expect(response.alignment).to eq(dto.alignment)
        end

        it "create paragraph with portions" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Paragraph.new
            portion1 = AsposeSlidesCloud::Portion.new
            portion1.text = "Portion1"
            portion2 = AsposeSlidesCloud::Portion.new
            portion2.text = "Portion2"
            portion2.font_bold = "True"
            dto.portion = [portion1, portion2]

            response = AsposeSlidesCloud::SpecUtils.api.create_paragraph(file_name, slide_index, shape_index, dto, nil, password, folder_name)
            expect(response.portion_list.length).to eq(2)
        end

        it "create subshape paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Paragraph.new
            dto.margin_left = 2
            dto.margin_right = 2
            dto.alignment = "Center"

            response = AsposeSlidesCloud::SpecUtils.api.create_subshape_paragraph(file_name, slide_index, "3/shapes", shape_index, dto, nil, password, folder_name)
            expect(response.margin_left).to eq(dto.margin_left)
            expect(response.margin_right).to eq(dto.margin_right)
            expect(response.alignment).to eq(dto.alignment)
        end

        it "update paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Paragraph.new
            dto.margin_left = 2
            dto.margin_right = 2
            dto.alignment = "Center"

            response = AsposeSlidesCloud::SpecUtils.api.update_paragraph(file_name, slide_index, shape_index, paragraph_index, dto,
                 password, folder_name)
            expect(response.margin_left).to eq(dto.margin_left)
            expect(response.margin_right).to eq(dto.margin_right)
            expect(response.alignment).to eq(dto.alignment)
        end

        it "update subshape paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            dto = AsposeSlidesCloud::Paragraph.new
            dto.margin_left = 2
            dto.margin_right = 2
            dto.alignment = "Center"

            response = AsposeSlidesCloud::SpecUtils.api.update_subshape_paragraph(file_name, slide_index, "3/shapes", shape_index, 
                paragraph_index, dto, password, folder_name)
            expect(response.margin_left).to eq(dto.margin_left)
            expect(response.margin_right).to eq(dto.margin_right)
            expect(response.alignment).to eq(dto.alignment)
        end

        it "delete paragraphs" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_paragraphs(file_name, slide_index, shape_index, nil,
                 password, folder_name)
                 expect(response.paragraph_links.length).to eq(0)
        end

        it "delete paragraphs indexes" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_paragraphs(file_name, slide_index, shape_index, [2],
                 password, folder_name)
                 expect(response.paragraph_links.length).to eq(1)
        end

        it "delete subshape paragraphs" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_subshape_paragraphs(file_name, slide_index, "3/shapes", shape_index, nil,
                 password, folder_name)
                 expect(response.paragraph_links.length).to eq(0)
        end

        it "delete subshape paragraphs indexes" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_subshape_paragraphs(file_name, slide_index, "3/shapes", shape_index, [1],
                 password, folder_name)
                 expect(response.paragraph_links.length).to eq(1)
        end

        it "delete paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_paragraph(file_name, slide_index, shape_index, paragraph_index,
                 password, folder_name)
            expect(response.paragraph_links.length).to eq(1)
        end

        it "delete subshape paragraph" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            response = AsposeSlidesCloud::SpecUtils.api.delete_subshape_paragraph(file_name, slide_index, "3/shapes", shape_index, paragraph_index,
                 password, folder_name)
            expect(response.paragraph_links.length).to eq(1)
        end

        it "get paragraph rect" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_paragraph_rectangle(file_name, slide_index, shape_index, paragraph_index, 
                password, folder_name)
            expect(response.x).not_to eq(0)
            expect(response.y).not_to eq(0)
            expect(response.width).not_to eq(0)
            expect(response.height).not_to eq(0)
        end

        it "paragraph default portion format" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            
            dto = AsposeSlidesCloud::Paragraph.new
            portion_fromat = AsposeSlidesCloud::PortionFormat.new
            portion_fromat.font_height = 20
            portion_fromat.latin_font = "Arial"
            dto.default_portion_format = portion_fromat

            portion1 = AsposeSlidesCloud::Portion.new
            portion1.text = "Portion1"
            portion2 = AsposeSlidesCloud::Portion.new
            portion2.text = "Portion2"
            dto.portion_list = [portion1, portion2]
            response = AsposeSlidesCloud::SpecUtils.api.create_paragraph(file_name, slide_index, shape_index, dto, nil, password, folder_name)
            expect(response.portion_list.length).to eq(2)
            expect(response.default_portion_format.latin_font).to eq(portion_fromat.latin_font)
            expect(response.default_portion_format.font_height).to eq(portion_fromat.font_height)
        end

        it "get paragraph effective" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 2
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_paragraph_effective(file_name, slide_index, shape_index, paragraph_index, 
                password, folder_name)
            expect(response.default_tab_size).to eq(72)
        end

        it "get subshape paragraph effective" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            password = "password"
            slide_index = 6
            shape_index = 1
            paragraph_index = 1
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_subshape_paragraph_effective(file_name, slide_index, "3/shapes", shape_index, paragraph_index, 
                password, folder_name)
            expect(response.default_tab_size).to eq(72)
        end
    end
end