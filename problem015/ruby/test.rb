require 'minitest/autorun'
require_relative 'solution'

describe 'paths' do
  it 'returns the number of possible routes in a N x M grid' do
    paths(2, 2).must_equal 6
    paths(3, 2).must_equal 10
  end
end
