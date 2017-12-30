def givePrizesToWinnersOfICPCAwards()
  numberOfTeams = gets.chomp.to_i
  h = Hash.new {}
  while numberOfTeams > 0
    key, value = gets.chomp.split(' ')
    if !h[key]
      h[key] = value
    end

    numberOfTeams -= 1
  end
  count =0
  h.each do | key, value |
      if count < 12
        puts "#{key} #{value}"
      end
        count += 1
end

end

givePrizesToWinnersOfICPCAwards