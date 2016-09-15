require 'prime'

def find_sums(ns)
  sum = 0
  mx = ns.max
  acc = {}

  Prime.each do |p|
    acc[p] = sum
    break if p > mx
    sum += p
  end

  ns.map do |n|
    i = n + 1
    while !acc[i] do
      i += 1
    end
    acc[i]
  end
end
