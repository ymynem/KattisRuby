=begin
Many years ago after another unfruitful day
in Cubicle Land, banging her head against yet
another cutting edge, marketing buzzword-filled
JavaScript framework, Janice the engineer looked
out of the window and decided that time was ripe for a change.

So swapping her keyboard and mouse for a fork and
a spade, she started her own gardening company.

After years of hard outdoor work Janice now has
biceps like Van Damme and owns the premiere landscaping
company in the whole of the South West, and has just been
lucky enough to broker a large contract to sow lawns for landed gentry.

Each contract details the size of the lawns that need to be
seeded, and the cost of seed per square metre. How much do
you need to spend on seed?

INPUT
One line containing a real number C (0<C≤100),
the cost of seed to sow one square metre of lawn.

One line containing an integer LL (0<L≤100), the number of lawns to sow.

L lines, each containing two positive real numbers: wi (0≤wi≤100),
the width of the lawn, and li (0≤li≤100), the length of the lawn.

All real numbers are given with at most 8 decimals after the decimal point.
=end

def calculate_cost_to_sow_all_of_the_lawns()
  cost = gets.chomp.to_f # the cost of seed to sow one square metre of lawn.
  number_of_lawns = gets.chomp.to_f # the number of lawns to sow
  # L lines, each containing two positive real numbers: w_i  the width of the lawn, and l_i the length of the lawn
  answer = 0
  while number_of_lawns.to_i > 0
    descr = gets.chomp
    width, length = descr.split.map(&:to_f)
    answer = answer + (cost * width.to_f * length.to_f)
    number_of_lawns -= 1
  end
  puts answer
end


calculate_cost_to_sow_all_of_the_lawns