require 'google/protobuf'

require_relative './addressbook_pb'

person = Tutorial::Person.new(phone_numbers: ["123-456-7890", "987-654-3210"])

puts "person#to_h"
puts person.to_h
puts "persion#phone_numbers"
puts person.phone_numbers

number_empty_person = Tutorial::Person.new(phone_numbers: [])

puts "number_empty_person#to_h"
puts number_empty_person.to_h
puts "number_empty_person#phone_numbers"
puts number_empty_person.phone_numbers.inspect

number_default_person = Tutorial::Person.new

puts "number_default_person#to_h"
puts number_default_person.to_h
puts "number_default_person#phone_numbers"
puts number_default_person.phone_numbers.inspect
