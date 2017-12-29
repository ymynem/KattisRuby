require 'set'

def calculateCitiesVistedByAlice()
  testCases = gets.chomp.to_i

  theSet = Set.new []
  while testCases > 0
    nrOfCities = gets.chomp.to_i
    theSet = Set.new []
    while nrOfCities > 0
      theSet << gets.chomp
      nrOfCities -= 1
    end

    testCases -= 1
    puts theSet.length
  end

end

calculateCitiesVistedByAlice