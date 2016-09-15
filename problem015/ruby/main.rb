require_relative 'solution'

gets.to_i.times do
  n, m = gets.chomp.split(' ').map &:to_i
  puts paths(n, m)
end
