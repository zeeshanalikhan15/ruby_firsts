print "hello\n"
puts "hello world!"

test_name = "zeeshan"
test_int = 34
test_double = 34.00778634
test_char = 'a'

puts "my name is: " + test_name
puts "int: #{test_int}"
puts "double: " + test_double.to_s
puts "char: " + test_char

test_string = "i,will,split,it"
rs = test_string.split(",")
puts print rs

if(test_int == 34)
    puts "i am in bro"   
end

for i in 0...5
    puts "i = #{i}"
end

puts "********************"
i = 0
while i < 4 do
    puts "j = #{i}"
    i += 1;
end

