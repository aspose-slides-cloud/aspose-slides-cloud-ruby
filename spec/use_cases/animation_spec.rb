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
  describe 'Animation' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      watermark_text = "watermarkText"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      animation = AsposeSlidesCloud::SpecUtils.api.get_animation(file_name, slide_index, nil, nil, password, folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(1)

      animation = AsposeSlidesCloud::SpecUtils.api.get_animation(file_name, slide_index, 3, nil, password, folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(0)

      animation = AsposeSlidesCloud::SpecUtils.api.get_animation(file_name, slide_index, 3, 1, password, folder_name)
      expect(animation.main_sequence.length).to eq(0)
    end

    it 'set' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::SlideAnimation.new

      effect1 = AsposeSlidesCloud::Effect.new
      effect1.type = "Blink"
      effect1.shape_index = 2
      effect1.paragraph_index = 1

      effect2 = AsposeSlidesCloud::Effect.new
      effect2.type = "Box"
      effect2.subtype = "In"
      effect2.preset_class_type = "Entrance"
      effect2.shape_index = 4
      dto.main_sequence = [ effect1, effect2 ]
      dto.interactive_sequences = []
      animation = AsposeSlidesCloud::SpecUtils.api.set_animation(file_name, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(dto.main_sequence.length)
      expect(animation.interactive_sequences.length).to eq(0)
    end

    it 'create effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Effect.new
      dto.type = "Blast"
      dto.shape_index = 3
      animation = AsposeSlidesCloud::SpecUtils.api.create_animation_effect(file_name, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(2)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'create interactive sequence' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::InteractiveSequence.new
      dto.trigger_shape_index = 2
      effect = AsposeSlidesCloud::Effect.new
      effect.type = "Blast"
      effect.shape_index = 3
      dto.effects = [ effect ]
      animation = AsposeSlidesCloud::SpecUtils.api.create_animation_interactive_sequence(file_name, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(2)
    end

    it 'create interactive sequence effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Effect.new
      dto.type = "Blast"
      dto.shape_index = 3
      animation = AsposeSlidesCloud::SpecUtils.api.create_animation_interactive_sequence_effect(file_name, 1, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'update effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Effect.new
      dto.type = "Blast"
      dto.shape_index = 3
      animation = AsposeSlidesCloud::SpecUtils.api.update_animation_effect(file_name, 1, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'update interactive sequence effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Effect.new
      dto.type = "Blast"
      dto.shape_index = 3
      animation = AsposeSlidesCloud::SpecUtils.api.update_animation_interactive_sequence_effect(file_name, 1, 1, 1, dto, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation(file_name, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(0)
      expect(animation.interactive_sequences.length).to eq(0)
    end

    it 'delete main sequence' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation_main_sequence(file_name, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(0)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'delete main sequence effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation_effect(file_name, 1, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(0)
      expect(animation.interactive_sequences.length).to eq(1)
    end

    it 'delete interactive sequences' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation_interactive_sequences(file_name, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(0)
    end

    it 'delete interactive sequence' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation_interactive_sequence(file_name, 1, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(0)
    end

    it 'delete interactive sequence effect' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      animation = AsposeSlidesCloud::SpecUtils.api.delete_animation_interactive_sequence_effect(file_name, 1, 1, 1, "password", folder_name)
      expect(animation.main_sequence.length).to eq(1)
      expect(animation.interactive_sequences.length).to eq(1)
    end
  end
end
