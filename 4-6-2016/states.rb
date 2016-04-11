puts "What states have you visited?"
answer=gets.chomp.downcase

if answer != 'done'
  states=[]
  states<<answer
  until answer == "done"
  puts "Any others?"
  answer=gets.chomp.downcase
  states<<answer
  end
end
states.pop
print states

puts "Have you visited any states (yes/no)?"
answer=gets.chomp.downcase
states=[]

if answer == "yes"
  while answer != "done"
    puts "Which ones?"
  answer=gets.chomp.downcase
  states<<answer
  end
end
states.pop
print states
puts ""
puts states
