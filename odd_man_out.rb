require profile.rb

def findTheMan()
  nrOfTestCases = gets.chomp.to_i
  caseNr = 1
  while nrOfTestCases > 0
    nrOfGuess = gets.chomp.to_i
    guests = gets.split(" ").map(&:to_i).sort

    puts "case ##{caseNr}: #{findHim(guests)}"

    caseNr += 1
    nrOfTestCases -= 1
  end
end


def findHim(guests)
  loopThrough = 0
  while loopThrough < guests.length
    if guests[loopThrough] !=  guests[loopThrough+1]
      return guests[loopThrough]
    end
    loopThrough += 2
  end
end
Profiler__ (findTheMan)