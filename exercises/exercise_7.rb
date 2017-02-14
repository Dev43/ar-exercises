require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Give me a store name please"
store_name = gets.chomp

new_store = Store.create(name: store_name)
puts new_store.errors.messages
 new_store.errors.messages.each do |message|
  puts message
end
# Your code goes here ...
