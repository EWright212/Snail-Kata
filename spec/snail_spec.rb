require 'snail.rb'

describe 'snail' do
  it 'deal with array of one' do
    snail = Snail.new
    expect(snail.get_path([[]])).to eq ([])
  end
  it 'deal with array of two' do
    snail = Snail.new
    expect(snail.get_path([[1,2],[3,4]])).to eq ([1, 2, 4, 3])
  end
  it 'deal with array of three' do
    snail = Snail.new
    expect(snail.get_path([[1,2,3],[4,5,6],[7,8,9]])).to eq ([1, 2, 3, 6, 9, 8, 7, 4, 5])
  end
end