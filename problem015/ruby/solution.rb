def factorial(n)
  (1..n).reduce 1, :*
end

def paths(n, m)
  (factorial(n+m) / (factorial(n) * factorial(m))) % (10**9 + 7)
end
