=begin
3
DCOOO
DODOCD
COD
=end

def findAbilities()
  numberOfBattlesOurHeroPlayed = gets.chomp.to_i
  n = 0
  loss = 0
  while n < numberOfBattlesOurHeroPlayed
    battle = gets.split('')

    len = battle.length - 1
    i = 0
    while i < len

      if battle[i] == "C" and battle[i + 1] == "D"
        loss += 1
        break
      end

      i += 1
    end
    n += 1
  end
  puts numberOfBattlesOurHeroPlayed - loss

end

findAbilities