# frozen_string_literal: true

require './creational/singleton/app'

RSpec.describe Singleton::App do
  describe '#main' do
    it 'executes the commands' do
      expect do
        described_class.new.main
      end.to output("execute command: Fight\nexecute command: Retreat\n").to_stdout
    end

    it 'returns same instance' do
      result = described_class.new.main
      instance_a = result[:instance_a]
      instance_b = result[:instance_b]

      expect(instance_a.object_id).to eq(instance_b.object_id)
    end
  end
end
