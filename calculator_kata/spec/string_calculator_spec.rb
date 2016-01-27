require 'spec_helper'
require 'string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'will return 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'will return 1 for "1"' do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it 'will return 3 for "1,2"' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'will return 45for "15,30"' do
      expect(StringCalculator.add('15,30')).to eq(45)
    end

    it 'will handle new lines as delimiters' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'will handle custom delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'will fail when negative numbers are used' do
      expect { StringCalculator.add('-1,-3') }
        .to raise_error('Negative numbers are not allowed: [-1, -3]')
    end
  end
end
