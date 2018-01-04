def helpPhdCandidateOut()
  testCases = gets.chomp.to_i
  for i in 0...testCases
    value = gets.chomp
    if value.include? '+'
      values = value.split('+').map(&:to_i)
      i = 0
      sum = 0
      while i < values.length
        sum += values[i]
        i += 1
      end
      puts sum
    else
      puts "skipped"
    end
  end

end
helpPhdCandidateOut