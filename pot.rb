def pot
  n = gets.chomp
  len_n = n.length
  the_n = n.to_i

  sum = 0
  i = 0
  while i < the_n  do
    s = gets.chomp
    base = s[0, s.length - 1]
    p = s[s.length - len_n]
    sum += base.to_i ** p.to_i
    i +=1
  end
  puts sum

end

pot()