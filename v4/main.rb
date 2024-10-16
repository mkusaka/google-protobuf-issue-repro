require 'google/protobuf'
# require 'pry'
# require 'pry-doc'

require_relative './addressbook_pb'

person = Tutorial::Person.new(
  phone_numbers: [
    Tutorial::PhoneNumber.new(type: Tutorial::PhoneType::HOME),
    Tutorial::PhoneNumber.new(number: "987-654-3210"),
    Tutorial::PhoneNumber.new(number: "987-654-3210", type: Tutorial::PhoneType::MOBILE),
    Tutorial::PhoneNumber.new(number: "987-654-3210", type: Tutorial::PhoneType::HOME),
  ]
)

puts "person#to_h"
puts person.to_h
puts "persion#phone_numbers"
puts person.phone_numbers[1].type

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

# binding.pry
