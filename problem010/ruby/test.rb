require 'minitest/autorun'
require_relative 'solution'

describe 'find_sums' do
  it 'returns the sum of primes below n' do
    find_sums([5, 10]).must_equal [10, 17]
  end
end
