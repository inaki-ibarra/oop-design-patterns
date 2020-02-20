# frozen_string_literal: true

require './behavioral/template_method/app'

RSpec.describe TemplateMethod::App do
  describe '#main' do
    context 'FileStorageA' do
      it 'stores the file to storage' do
        expect do
          described_class.new.main('FileStorageA')
        end.to output(
          <<~TEXT
            connect to TemplateMethod::FileStorageA
            prepare file: test.txt
            save to TemplateMethod::FileStorageA
          TEXT
        ).to_stdout
      end
    end

    context 'FileStorageB' do
      it 'stores the file to storage' do
        expect do
          described_class.new.main('FileStorageB')
        end.to output(
          <<~TEXT
            connect to TemplateMethod::FileStorageB
            compress file: test.txt
            save to TemplateMethod::FileStorageB
          TEXT
        ).to_stdout
      end
    end
  end
end
