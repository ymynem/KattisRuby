
def match()

  descr = gets.chomp
  n, w, h = descr.split.map(&:to_f)

  ps = Math.sqrt( w*w + h*h).floor
  i = 0
  while i < n
    valueToMatch = gets.chomp.to_i

    if valueToMatch <= ps
      puts "DA"
    else
      puts "NE"
    end
    i += 1
  end


end


match