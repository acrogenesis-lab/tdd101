require 'spec_helper'
require 'sum'

describe Sum do
  it 'sums two positive values' do
    sum = Sum.new(3, 5)
    expect(sum.execute).to eql(8)
  end
end
