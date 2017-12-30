def apaxiasCompaction()
  wordList = gets.chomp.split('')

  prev = ""
  newWord = ""
  for char in wordList
    if prev != char
      newWord += char
    end
    prev = char
  end
  puts newWord
end
apaxiasCompaction