def solveNoDuplicates()
  string = gets.split(" ")
  string = string.sort

  noDuplicates = true
  for i in 0...string.length
    if string[i] == string[i+1]
      print "no"
      noDuplicates = false
      break
    end

  end
  if noDuplicates
    print "yes"
  end


end
solveNoDuplicates