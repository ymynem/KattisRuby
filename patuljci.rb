# This problem is not solved yet. I am stuck thinking wrong somewhere. Will get back to this
# one later

def patuljci()
  nrOfDwarfs = 9
  dwarfHatNumbers = []
  for i in 0...nrOfDwarfs
    dwarfHatNumbers[i] = gets.chomp.to_i
  end

  sum = sumUpAllNumbers(dwarfHatNumbers)
  diff = 100
  while sum > 100 and diff > 0
    diff = sum - 100
    dwarfHatNumbers = findNonRealDwarfs(diff, dwarfHatNumbers)
    sum = sumUpAllNumbers(dwarfHatNumbers)
    if sum == 100
      break
    end
    puts sum
  end
  print dwarfHatNumbers
  puts
  puts sum

end

#
#   Takes a difference and a list
#   figures out elements that should be removed
#

def findNonRealDwarfs(diff, dwarfHatNumbersmall)
  tmpSum = 0
  for hatnr in dwarfHatNumbersmall
    tmpSum += hatnr
    puts "I AM HERE"
    puts hatnr
    puts tmpSum
    if tmpSum == diff
      dwarfHatNumbersmallNew = dwarfHatNumbersmall - [hatnr]
      puts "Hi"
      print dwarfHatNumbersmall

      puts "HiNEW"
      print dwarfHatNumbersmallNew

    elsif tmpSum > diff
      
  end
  return dwarfHatNumbersmallNew
end


#
#   Calculate the sum of all elements i a given list
#

def sumUpAllNumbers(dwarfHatNumbers)
  sum = 0
  if dwarfHatNumbers != nil
    for i in 0...dwarfHatNumbers.length
      sum += dwarfHatNumbers[i]
    end

  end
  return sum
end

patuljci
