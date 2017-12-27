def getDistanceDriven()

  i = 0
  n = gets.chomp.to_i
  while n != -1
    distanceDriven = 0
    previousSpeedInMilesPerHour, previousTotalElapsedTime = gets.chomp.split(' ').map(&:to_i)
    distanceDriven += previousTotalElapsedTime * previousSpeedInMilesPerHour

    while i < n-1
      currentSpeedInMilesPerHour, currentTotalElapsedTime = gets.chomp.split(' ').map(&:to_i)
      nextElapsedTime = currentTotalElapsedTime - previousTotalElapsedTime
      previousTotalElapsedTime = currentTotalElapsedTime
      distanceDriven += nextElapsedTime * currentSpeedInMilesPerHour
      i += 1

    end
    i = 0

    puts distanceDriven.to_s + " miles"
    n = gets.chomp.to_i
  end
end

getDistanceDriven