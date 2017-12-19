def quadrantSelection
  x = gets.chomp.to_i
  y = gets.chomp.to_i
  if x > 0 && y > 0
    puts 1
  elsif x < 0 && y > 0
    puts 2
  elsif x < 0 && y < 0
    puts 3
  else
    puts 4
  end

end
quadrantSelection()