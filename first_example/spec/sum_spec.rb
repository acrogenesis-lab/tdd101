require 'spec_helper'
require 'sum'

describe Sum do
  it 'sums 3 and 5' do
    sum = Sum.new(3, 5)
    expect(sum.execute).to eql(8)
  end

  it 'sums 6 and 9' do
    sum = Sum.new(6, 9)
    expect(sum.execute).to eql(15)
  end

  it 'sums -1 and 9' do
    sum = Sum.new(-1, 9)
    expect(sum.execute).to eql(8)
  end
end
