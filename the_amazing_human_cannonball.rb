def solveAmazingHumanCannonball()

  nrOfTestCases = gets.chomp.to_i


  i = 0
  g = 9.81

  while i < nrOfTestCases

    parameters = gets.chomp.split(" ").map(&:to_f)
    v0 = parameters[0].to_f
    delta = (parameters[1].to_f * (Math::PI/180.to_f))
    x1 = parameters[2].to_f
    h1 = parameters[3].to_f
    h2 = parameters[4].to_f
    t = x1 / (v0 * Math.cos(delta))
    y = (v0 * t * Math.sin(delta)) - ((1.to_f/2.to_f).to_f * g * (t**2))

    m = 1.0
    y_h1 = (h1 + m)
    y_h2 = (h2 - m)

    puts " "
    if y >= y_h1  and y <= y_h2
      puts "Safe"

      #puts "y = #{y}, y_h1 = #{y_h1} > h1 = #{h1}, y_h2 = #{y_h2} < h2 = #{h2}"

    else
      puts "Not Safe"

      #puts "y = #{y}, y_h1 = #{y_h1}, h1 = #{h1}, y_h2 = #{y_h2}, h2 = #{h2}"
    end

    i += 1

  end

end

solveAmazingHumanCannonball