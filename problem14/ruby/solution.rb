def collatz_sequence_length(n)
  return 1 if n == 1
  return $lengths[n] if $lengths[n]
  len = 1 + collatz_sequence_length(n.odd? ? 3*n+1 : n/2)
  $lengths[n] = len if n < 1000000
  len
end

def longest_sequences(n)
  result = []
  max_so_far = 1
  max_length_so_far = 1
  (2..n).each do |x|
    len = collatz_sequence_length(x)
    if max_length_so_far <= len
      result.push [x-1, max_so_far]
      max_so_far = x
      max_length_so_far = len
    elsif x == n
      result.push [x, max_so_far]
    end
  end
  result
end

def print_results(ns)
  ls = longest_sequences ns.max
  ns.each do |n|
    ls.each do |x|
      if x[0] >= n
        puts x[1]
        break
      end
    end
  end
end

$lengths = []
