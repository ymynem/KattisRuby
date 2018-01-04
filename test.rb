def takeTwoStones
  nrOfStones = gets.chomp

  if nrOfStones.to_i % 2 == 0
    puts "Bob"
  else
    puts "Alice"
  end
end

takeTwoStones()
