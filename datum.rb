def findWeekDay()
  monthDay, month = gets.chomp.split(" ").map(&:to_i)

  yearDay = getYearDay(monthDay, month)


  weekDay = (2 + yearDay) % 8
  case weekDay
    when 1
      puts "Monday"
    when 2
      puts "Tuesday"
    when 3
      puts "Wednesday"
    when 4
      puts "Thursday"
    when 5
      puts "Friday"
    when 6
      puts "Saturday"
    when 7
      puts "Sunday"
  end

end

def getYearDay(monthday, month)
  case month
    when 1
      yearDay = monthday
    when 2
      yearDay = 31 + monthday
    when 3
      yearDay = 31 + 28 + monthday
    when 4
      yearDay = 31 + 28 + 31 + monthday
    when 5
      yearDay = 31 + 28 + 31 + 30 + monthday
    when 6
      yearDay = 31 + 28 + 31 + 30 + 31 + monthday
    when 7
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + monthday
    when 8
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 +monthday
    when 9
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + monthday
    when 10
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + monthday
    when 11
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + monthday
    when 12
      yearDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + monthday
  end
  return yearDay
end

findWeekDay