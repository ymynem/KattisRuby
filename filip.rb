def helpFilip()
  first, second = gets.chomp.split
  first = first.reverse!.to_i
  second = second.reverse!.to_i

  if first > second
    puts first
  else
    puts second
  end
end
helpFilip