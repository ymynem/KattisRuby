=begin
Tablet (‘T’), Compass (‘C’), and Gear (‘G’).
For each type of cards, a player earns a number of
points that is equal to the squared number of that type
of cards played. Additionally, for each set of three
different scientific cards, a player scores 77 points.

For example, if a player plays 3 Tablet cards, 2 Compass cards and 1 Gear card,
she gets 3^2+2^2+1^2+7=21 points.

Output the number of scientific points the player earns.
=end
def sevenWonders()
  string = gets.chomp.split('')

  tCards = 0
  cCards = 0
  gCards = 0
  #string = string.sort


  for i in 0...string.length
    if string[i] == "T"
      tCards += 1

    elsif string[i] == "C"
      cCards += 1

    elsif string[i] == "G"
      gCards += 1

    end

  end


  winner = (tCards ** 2) + (cCards ** 2) + (gCards ** 2)

  if tCards > 0 and cCards > 0 and gCards > 0
    if tCards == cCards and cCards == gCards
      winner += 7 * cCards
      #puts "me equalCards"
    elsif [gCards, cCards].min == [gCards, tCards].min
      winner += 7 * gCards
      #puts "me gcards"
    elsif [tCards, cCards].min == [tCards, gCards].min
      #puts "me tcards"
      winner += 7 * tCards
    elsif [cCards, gCards].min == [cCards, tCards].min
      #puts "me ccards"
      winner += 7 * cCards
    end
  end

  puts winner

end

sevenWonders