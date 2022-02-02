require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

#create store 1 employees
@store1.employees.create(first_name: "John", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Smitty", last_name: "John", hourly_rate: 60)

#create store 2 employees
@store2.employees.create(first_name: "Apple", last_name: "Jobs", hourly_rate: 60)
@store2.employees.create(first_name: "Tim", last_name: "Book", hourly_rate: 60)
@store2.employees.create(first_name: "Walt", last_name: "Disney", hourly_rate: 60)
