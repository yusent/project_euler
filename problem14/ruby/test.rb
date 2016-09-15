require 'minitest/autorun'
require_relative 'solution'

describe 'longest_sequences' do
  it 'returns the longest sequences up to n' do
    longest_sequences(30).must_equal [
      [1, 1],
      [2, 2],
      [5, 3],
      [6, 6],
      [8, 7],
      [17, 9],
      [18, 18],
      [24, 19],
      [26, 25],
      [30, 27],
    ]
  end
end
