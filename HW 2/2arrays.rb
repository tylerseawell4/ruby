# arr1=[]
# arr2=[]


# puts "How many numbers do you have?"
# first_entry = gets.chomp.to_i

# puts "Type in the numbers you want added."

# first_entry.times do 
# 	numbers1 = gets.chomp.to_i
# 	arr1<<numbers1
# end

# puts "How many numbers do you have?"
# second_entry = gets.chomp.to_i

# puts "Type in the numbers you want added."

# second_entry.times do
# 	numbers2 = gets.chomp.to_i
# 	arr2<<numbers2
# end


# def add_array(a,b)
#  	a.zip(b)
# end

# def condense(c)
# 	c.collect! {|x, y| x + y}
# end


# arr3 = add_array(arr1, arr2)
# print arr3
# puts ""
# condense(arr3)
# print arr3

puts 'I add numbers, how many numbers do you want me to add?'
input = gets.chomp.to_i
arr = [0, 0]
arr2 = [0, 0]
arr3 = []
input.times do
  arr<<rand(9)
  arr2<<rand(9)
end
p arr
p arr2
arr.each_with_index do |num, index|
  arr3<< num + arr2[index]
end
 puts arr3
