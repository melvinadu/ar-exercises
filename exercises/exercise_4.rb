require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(
  name: "Surrey", 
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
  )

whistler = Store.create(
  name: "Whistler", 
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
  )

yaletown = Store.create(
  name: "Yaletown", 
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
  )

#fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
@mens_stores = Store.where(mens_apparel: true)

#Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "name: #{store.name} and annual revenue: #{store.annual_revenue}"
end

#Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

#Loop through each of these stores and output their name and annual revenue on each line.
@womens_stores.each do |store|
  puts "name: #{store.name} and annual revenue: #{store.annual_revenue}"
end