# p064regexp.rb
def hissingMicrophone()
  # amiss
  word = gets.chomp
  word_re = /.*(ss).*/

  if(word_re.match(word))
    puts "hiss"
  else
    puts "no hiss"
    end
end

hissingMicrophone