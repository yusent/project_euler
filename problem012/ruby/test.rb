require 'minitest/autorun'
require_relative 'solution'

describe 'find_numbers' do
  it 'returns the first triangle number with more than n divisors' do
    find_numbers([4, 1, 1000]).must_equal [28, 3, 842161320]
  end
end
