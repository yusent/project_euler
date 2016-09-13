require_relative 'solution'

find_numbers(gets.chomp.to_i.times.map{ gets.chomp.to_i }).each{ |r| puts r }
