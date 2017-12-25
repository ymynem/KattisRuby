#!/bin/ruby

def solve()
  # Complete this function
  descrA = gets.chomp
  a0, a1, a2 = descrA.split.map(&:to_i)
  descrB = gets.chomp
  alice = 0
  bob = 0
  b0, b1, b2 = descrB.split.map(&:to_i)



  if compare(a0,b0) == "Alice"
    alice += 1
  elsif compare(a0,b0) == "Bob"
    bob += 1
  end



  if compare(a1,b1) == "Alice"
    alice += 1
  elsif compare(a1,b1) == "Bob"
    bob += 1
  end


  if compare(a2,b2) == "Alice"
    alice += 1
  elsif compare(a2,b2) == "Bob"
    bob += 1
  end



  puts alice.to_s + " " + bob.to_s

end

def compare(a,b)
  answer = ""
  if a > b
    answer = "Alice"
  elsif a < b
    answer = "Bob"
  else
    answer = 0
  end
  return answer
end

solve

