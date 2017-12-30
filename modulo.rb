require 'set'

def calculateModulo()
  mod = 42
  nrOfValues = 10
  counter = 0
  valueSet = Set.new []
  while nrOfValues > 0
    value = gets.chomp.to_i

    valueSet << value % mod

    nrOfValues -= 1
  end
  puts valueSet.length

end
calculateModulo