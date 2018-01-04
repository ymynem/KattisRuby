def solveJudgingMoose()
  values = gets.split(" ").map(&:to_i)
  left = values[0]
  right = values[1]
  print getAnswer(left, right)
end

def getAnswer(left, right)
  if left == 0 and right == 0
    return "Not a moose"
  end
  if left == right
    return "Even #{left+left}"
  else
    max = [left,right].max
    return "Odd #{max+max}"
  end
end
solveJudgingMoose