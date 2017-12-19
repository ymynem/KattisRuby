def r2
  nr = gets.chomp
  r1, s = nr.split.map(&:to_i)

  r2 = (s * 2) - r1

  puts r2

end

r2()