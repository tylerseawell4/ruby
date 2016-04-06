#make the arrays
def makeArray(times)
  array = []
  until times == 0
    array << rand(1..1000)
    times -= 1
  end
  return array
end
 
#add the arrays
def addArray(array1,array2)
  array3 = []
  array1.each_with_index { |num, index|
    array3 << num+array2[index]
  }
  puts array3
end
 
array1 = []
array2 = []
#do the thing
print "How long should the arrays be? "
times = gets.chomp.to_i
array1 = makeArray times
array2 = makeArray times
addArray(array1, array2)