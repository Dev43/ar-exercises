require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Pat", last_name: "Guay", hourly_rate: 50)
@store1.employees.create(first_name: "Hilke", last_name: "Gune", hourly_rate: 200)

@store2.employees.create(first_name: "Rick", last_name: "frefe", hourly_rate: 60)
@store2.employees.create(first_name: "Patroeick", last_name: "fewfwefew", hourly_rate: 122)
@store2.employees.create(first_name: "Rage", last_name: "Gunther", hourly_rate: 2000)