def ladder()
  values = gets.split(" ").map(&:to_i)
  # pi / 180 = 0.01745329251. Done it manually to optimize code
  puts (values[0] * (1 / Math.sin(values[1] * 0.01745329251))).ceil
end
ladder
