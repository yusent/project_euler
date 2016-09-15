require 'prime'

def divisors_count(n)
  Prime.prime_division(n).inject(1) { |s, a| s * (a[1] + 1) }
end

def find_numbers(ns)
  l = ns.length
  results = []
  acc = 0
  next_val = 1

  while results.compact.length < l do
    acc += next_val
    next_val += 1
    divs = divisors_count acc
    ns.each_with_index do |n, i|
      results[i] ||= acc if divs > n
    end
  end

  results
end
