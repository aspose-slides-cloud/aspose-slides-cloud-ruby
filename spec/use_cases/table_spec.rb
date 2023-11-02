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
    describe 'Tables' do
        it 'update table cell' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 2
            cell_index = 1
            dto = AsposeSlidesCloud::TableCell.new
            dto.text = "Test text"
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_table_cell(file_name, slide_index, shape_index, 
                row_index, cell_index, dto, "password", folder_name)
            expect(result.text).to eq(dto.text)
        end

        it 'create table row' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            cell0 = AsposeSlidesCloud::TableCell.new
            cell0.text = "Cell 1"
            cell1 = AsposeSlidesCloud::TableCell.new
            cell1.text = "Cell 2"
            cell2 = AsposeSlidesCloud::TableCell.new
            cell2.text = "Cell 2"
            cell3 = AsposeSlidesCloud::TableCell.new
            cell3.text = "Cell 3"

            dto = AsposeSlidesCloud::TableRow.new
            dto.minimal_height = 30
            dto.cells = [cell0, cell1, cell2, cell3]

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_table_row(file_name, slide_index, shape_index, dto, 
                nil, "password", folder_name)
            expect(result.cells.length).to eq(dto.cells.length)
            expect(result.minimal_height).to eq(dto.minimal_height)
        end

        it 'delete table row' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 2
            with_attached_rows = true

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_table_row(file_name, slide_index, shape_index, 
                row_index, with_attached_rows, "password", folder_name)
            expect(result.rows.length).to eq(2)
        end

        it 'update table row' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1

            dto = AsposeSlidesCloud::TableRow.new
            dto.minimal_height = 30

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_table_row(file_name, slide_index, shape_index, 
                row_index, dto, "password", folder_name)

            expect(result.minimal_height).to eq(dto.minimal_height)
        end

        it 'merge table cell' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
        
            dto = AsposeSlidesCloud::TableCellMergeOptions.new
            dto.first_row_index = 1
            dto.first_cell_index = 1
            dto.last_row_index = 2
            dto.last_cell_index = 2
            dto.allow_splitting = true

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_table_cells(file_name, slide_index, shape_index, dto, "password", folder_name)

            expect(result.rows[0].cells[0].col_span).to eq(2)
            expect(result.rows[0].cells[0].row_span).to eq(2)
        end

        it 'split table cell by width' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            cell_width = 10

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.split_table_cell(file_name, slide_index, shape_index,
                row_index, cell_index, "SplitByWidth", cell_width, "password", folder_name)

            expect(result.rows[0].cells.length).to eq(5)
        end

        it 'split table cell by height' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            cell_height = 10

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.split_table_cell(file_name, slide_index, shape_index,
                row_index, cell_index, "SplitByHeight", cell_height, "password", folder_name)

            expect(result.rows.length).to eq(5)
        end

        it 'split table cell by col span' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 3
            cell_index = 1
            col_span = 1

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.split_table_cell(file_name, slide_index, shape_index,
                row_index, cell_index, "SplitByColSpan", col_span, "password", folder_name)

            expect(result.rows[0].cells[0].col_span).to eq(nil)
        end

        it 'split table cell by row span' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 2
            cell_index = 3
            row_span = 1

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.split_table_cell(file_name, slide_index, shape_index,
                row_index, cell_index, "SplitByRowSpan", row_span, "password", folder_name)

            expect(result.rows[1].cells[2].row_span).to eq(nil)
        end

        it 'get table cell paragraphs' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_table_cell_paragraphs(file_name, slide_index, shape_index,
                row_index, cell_index, "password", folder_name)

            expect(result.paragraph_links.length).to eq(1)
        end

        it 'get table cell paragraph' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1

            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_table_cell_paragraph(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, "password", folder_name)

            expect(result.portion_list.length).to eq(2)
        end

        it 'create table cell paragraph' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            
            portion0 = AsposeSlidesCloud::Portion.new
            portion0.text = "Portion 1"
            portion1 = AsposeSlidesCloud::Portion.new
            portion1.text = "Portion 2"
            dto = AsposeSlidesCloud::Paragraph.new
            dto.portion_list = [portion0, portion1]


            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_table_cell_paragraph(file_name, slide_index, shape_index,
                row_index, cell_index, dto, "password", folder_name)

            expect(result.portion_list.length).to eq(2)
        end

        it 'update table cell paragraph' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            
            portion0 = AsposeSlidesCloud::Portion.new
            portion0.text = "Portion 1"
            portion1 = AsposeSlidesCloud::Portion.new
            portion1.text = "Portion 2"
            dto = AsposeSlidesCloud::Paragraph.new
            dto.portion_list = [portion0, portion1]


            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_table_cell_paragraph(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, dto, "password", folder_name)

            expect(result.portion_list.length).to eq(2)
        end

        it 'delete table cell paragraph' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            
            portion0 = AsposeSlidesCloud::Portion.new
            portion0.text = "Portion 1"
            portion1 = AsposeSlidesCloud::Portion.new
            portion1.text = "Portion 2"
            dto = AsposeSlidesCloud::Paragraph.new
            dto.portion_list = [portion0, portion1]


            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_table_cell_paragraph(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, "password", folder_name)

            expect(result.paragraph_links.length).to eq(0)
        end

        it 'get table cell portions' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_table_cell_portions(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, "password", folder_name)

            expect(result.items.length).to eq(2)
        end

        it 'get table cell portions' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            portion_index = 1 
            
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_table_cell_portion(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, portion_index, "password", folder_name)

            expect(result.text).to eq("Header")
        end

        it 'create table cell portion' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            dto = AsposeSlidesCloud::Portion.new
            dto.text = "Portion 1"
            
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_table_cell_portion(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, dto, "password", folder_name)

            expect(result.text).to eq(dto.text)
        end

        it 'update table cell portion' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            portion_index = 1
            dto = AsposeSlidesCloud::Portion.new
            dto.text = "Portion 1"
            
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_table_cell_portion(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, portion_index, dto, "password", folder_name)

            expect(result.text).to eq(dto.text)
        end

        it 'delete table cell portion' do
            folder_name = "TempSlidesSDK"
            file_name = "test.pptx"
            AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

            slide_index = 9
            shape_index = 1
            row_index = 1
            cell_index = 1
            paragraph_index = 1
            portion_index = 1
            dto = AsposeSlidesCloud::Portion.new
            dto.text = "Portion 1"
            
            result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_table_cell_portion(file_name, slide_index, shape_index,
                row_index, cell_index, paragraph_index, portion_index, "password", folder_name)

            expect(result.items.length).to eq(1)
        end
    end
end