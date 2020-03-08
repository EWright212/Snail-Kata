require 'snail.rb'

describe 'snail' do
  it 'deal with array of two' do
    snail = Snail.new
    expect(snail.get_path([[1,2],[3,4]])).to eq ([1, 2, 4, 3])
  end
end