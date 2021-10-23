puts "Think of a number and enter"
gets
puts "Add same of your firend in that"
gets
magic_number = rand(1..100)
puts "Add #{magic_number} in that."
puts "hit enter when done ..."
gets
puts "Give half to begger from total"
puts "hit enter when done ..."
gets
puts "Give back to firend's number from the total"
puts "hit enter when done ..."
gets
half = (magic_number >> 1).to_i
puts "remaing number is #{half}"
