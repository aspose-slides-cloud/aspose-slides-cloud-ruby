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
    describe 'Comments' do
        it "create comment" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 3
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            dto = AsposeSlidesCloud::SlideComment.new
            dto.text = "Comment text"
            dto.author = "Test author"
            child_comment = AsposeSlidesCloud::SlideComment.new
            child_comment.text = "Child comment text"
            child_comment.author = "Test author"
            dto.child_comments = [child_comment]
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_comment(file_name, slide_index, dto, nil, "password", folder_name)
            expect(response.list.length).to eq(1)
            expect(response.list[0].text).to eq(dto.text)
            expect(response.list[0].author).to eq(dto.author)
            expect(response.list[0].child_comments[0].text).to eq(child_comment.text)
            expect(response.list[0].child_comments[0].author).to eq(child_comment.author)
        end

    
        it "create comment online" do
            dto = AsposeSlidesCloud::SlideComment.new
            dto.text = "Comment text"
            dto.author = "Test author"
            child_comment = AsposeSlidesCloud::SlideComment.new
            child_comment.text = "Child comment text"
            child_comment.author = "Test author"
            dto.child_comments = [child_comment]

            source = File.binread("TestData/test.pptx")
            slide_index = 3
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_comment_online(source, slide_index, dto, nil, "password")
            expect(response.size).not_to eq(source.size)
        end

        it "get slide comments" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_comments(file_name, slide_index, "password", folder_name)
            expect(response.list.length).to eq(2)
            expect(response.list[0].child_comments.length).to eq(1)
        end

        it "delete comments" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_comments(file_name, nil, "password", folder_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_comments(file_name, slide_index, "password", folder_name)
            expect(response.list.length).to eq(0)
        end

        it "delete comments online" do
            source = File.binread("TestData/test.pptx")
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_comments_online(source, nil, "password")
            expect(response.size).not_to eq(source.size)
        end

        it "delete slide comments" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 1
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_slide_comments(file_name, slide_index, nil, "password", folder_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_comments(file_name, slide_index, "password", folder_name)
            expect(response.list.length).to eq(0)
        end

        it "delete slide comments online" do
            source = File.binread("TestData/test.pptx")
            slide_index = 1
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_slide_comments_online(source, slide_index, nil, "password")
            expect(response.size).not_to eq(source.size)
        end

        it "create modern comment" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 3 
            text_selection_start_index = 1
            text_selection_length = 5
            
            child_comment = AsposeSlidesCloud::SlideModernComment.new
            child_comment.author = "Test author"
            child_comment.text = "Child comment text"
            child_comment.status = "Resolved"

            comment = AsposeSlidesCloud::SlideModernComment.new
            comment.author = "Test author"
            comment.text = "Comment text"
            comment.status = "Active"
            comment.text_selection_start = text_selection_start_index
            comment.text_selection_length = text_selection_length
            comment.child_comments = [child_comment]

            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_comment(file_name, slide_index, comment, nil, "password", folder_name)
            expect(response.list.length).to eq(1)
            expect(response.list[0].type).to eq("Modern")
        end

        it "create shape modern comment" do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            slide_index = 3 
            shape_index = 1
            text_selection_start_index = 1
            text_selection_length = 5
            
            child_comment = AsposeSlidesCloud::SlideModernComment.new
            child_comment.author = "Test author"
            child_comment.text = "Child comment text"
            child_comment.status = "Resolved"

            comment = AsposeSlidesCloud::SlideModernComment.new
            comment.author = "Test author"
            comment.text = "Comment text"
            comment.status = "Active"
            comment.text_selection_start = text_selection_start_index
            comment.text_selection_length = text_selection_length
            comment.child_comments = [child_comment]

            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
            response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_comment(file_name, slide_index, comment, shape_index, "password", folder_name)
            expect(response.list.length).to eq(1)
            expect(response.list[0].type).to eq("Modern")
        end
    end
end