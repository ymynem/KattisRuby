def calculateSum()
  l = gets.chomp.to_i
  d = gets.chomp.to_i
  v = gets.chomp.to_i

  wanted = l
  minAndMax = []
  while wanted <= d

    array = wanted.to_s.split('').map(&:to_i)
    sum = 0
    for i in 0...array.length
      sum += array[i]
    end

    if sum == v
      minAndMax.push(wanted)
    end
    wanted += 1
  end
  puts minAndMax[0]
  puts minAndMax[-1]



end

calculateSum