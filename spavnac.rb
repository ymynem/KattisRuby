def extract45minutes()
  hours, minutes = gets.chomp.split(' ').map(&:to_i)
  if hours == 0 and minutes < 45
    hours = 23
    minutes = 60 + (minutes - 45)
    # 30 - 45
    puts hours.to_s + " " + minutes.to_s
  elsif minutes < 45
    hours -= 1
    minutes = 60 + (minutes - 45)
    puts hours.to_s + " " + minutes.to_s
  else
    hours
    minutes = (minutes - 45)
    puts hours.to_s + " " + minutes.to_s
  end


end

extract45minutes