def nastyHacks
  n = gets.chomp.to_i
  i = 0
  while i < n do
    line = gets.chomp
    r, e, c = line.split.map(&:to_i)
    total = e - c
    if r > total
      puts "do not advertise"
    elsif total > r
      puts "advertise"
    else
      puts "does not matter"
    end
    i += 1
  end
end

nastyHacks

