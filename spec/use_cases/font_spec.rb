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
    describe 'Fonts' do
        it "get fonts" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.get_fonts(file_name, "password", folder_name)
            expect(response.list.length).to eq(3)
        end

        it "get fonts online" do
            source = File.binread("TestData/test.pptx")
            response = AsposeSlidesCloud::SpecUtils.api.get_fonts_online(source, "password")
            expect(response.list.length).to eq(3)
        end

        it "set embedded font" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            font_name = "Calibri"
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.set_embedded_font(file_name, font_name, false, "password", folder_name)
            expect(response.list.length).to eq(3)
            expect(response.list[2].is_embedded).to eq(true)
            expect(response.list[2].font_name).to eq(font_name)
        end

        it "set embedded font online" do
            source = File.binread("TestData/test.pptx")
            font_name = "Calibri"
            response = AsposeSlidesCloud::SpecUtils.api.set_embedded_font_online(source, font_name, false, "password")
            expect(response.size).not_to eq(source.size)
        end

        it "set embedded font from request" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            font_name = "Calibri"
            source = File.binread("TestData/calibri.ttf")
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.set_embedded_font_from_request(source, file_name, false, "password", folder_name)
            expect(response.list.length).to eq(3)
            expect(response.list[2].is_embedded).to eq(true)
            expect(response.list[2].font_name).to eq(font_name)
        end

        it "set embedded font from request online" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            sourceDocument = File.binread("TestData/test.pptx")
            sourceFont = File.binread("TestData/calibri.ttf")
            response = AsposeSlidesCloud::SpecUtils.api.set_embedded_font_from_request_online(sourceDocument, sourceFont, 
                false, "password")
            expect(response.size).not_to eq(sourceDocument.size)
        end

        it "delete embedded font" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            font_name = "Calibri"
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.set_embedded_font(file_name, font_name, false, "password", folder_name)
            expect(response.list[2].is_embedded).to eq(true)
            response = AsposeSlidesCloud::SpecUtils.api.delete_embedded_font(file_name, font_name, "password", folder_name)
            expect(response.list[2].is_embedded).to eq(nil)
        end

        it "delete embedded font online" do
            source = File.binread("TestData/test.pptx")
            font_name = "Calibri"
            response_embedded = AsposeSlidesCloud::SpecUtils.api.set_embedded_font_online(source, font_name, false, "password")
            expect(response_embedded.size).not_to eq(source.size)
            response_deleted = AsposeSlidesCloud::SpecUtils.api.delete_embedded_font_online(response_embedded, font_name, "password")
            expect(response_deleted.size).to eq(source.size)
        end

        it "replace font" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            source_font_name = "Calibri"
            target_font_name = "Times New Roman"
            embed = true
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.api.replace_font(file_name, source_font_name, target_font_name, embed, 
                "password", folder_name)
            expect(response.list[2].is_embedded).to eq(true)
            expect(response.list[2].font_name).to eq("Times New Roman")
        end

        it "replace font online" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            source_font_name = "Calibri"
            target_font_name = "Times New Roman"
            embed = true
            source = File.binread("TestData/test.pptx") 
            response = AsposeSlidesCloud::SpecUtils.api.replace_font_online(source, source_font_name, target_font_name, embed, 
                "password")
            expect(response.size).not_to eq(source.size)
        end

        it "font substitution" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            target_font_name = "Times New Roman"
            AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            font_rule1 = AsposeSlidesCloud::FontSubstRule.new
            font_rule1.source_font = "Arial"
            font_rule1.target_font = target_font_name
            font_rule1.not_found_only = false
            font_rule2 = AsposeSlidesCloud::FontSubstRule.new
            font_rule2.source_font = "Calibri"
            font_rule2.target_font = target_font_name
            export_options = AsposeSlidesCloud::ImageExportOptions.new
            export_options.font_subst_rules = [font_rule1, font_rule2]
            response = AsposeSlidesCloud::SpecUtils.api.download_presentation(file_name, "PNG", export_options, "password", folder_name)
        end
    end
end