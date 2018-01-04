def solvePet()
  lines = 5
  sum = 0
  max = 0
  winner = -1
  counter = 0
  while counter < lines
    pointList = gets.split(" ").map(&:to_i)

    sum = countTheSum(pointList)
    if sum >= max
      max = sum
      winnerSummer = sum
      winner = counter

    end
    counter += 1

  end
  print "#{winner + 1} #{winnerSummer}"

end

def countTheSum(pointList)
  sum = 0
  for i in 0...pointList.length
    sum += pointList[i]
  end
    return sum
end
solvePet