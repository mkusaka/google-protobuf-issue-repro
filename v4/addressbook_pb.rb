# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: addressbook.proto

require 'google/protobuf'


descriptor_data = "\n\x11\x61\x64\x64ressbook.proto\x12\x08tutorial\"D\n\x06Person\x12\x0c\n\x04name\x18\x01 \x01(\t\x12,\n\rphone_numbers\x18\x02 \x03(\x0b\x32\x15.tutorial.PhoneNumber\"@\n\x0bPhoneNumber\x12\x0e\n\x06number\x18\x01 \x01(\t\x12!\n\x04type\x18\x02 \x01(\x0e\x32\x13.tutorial.PhoneType*+\n\tPhoneType\x12\n\n\x06MOBILE\x10\x00\x12\x08\n\x04HOME\x10\x01\x12\x08\n\x04WORK\x10\x02\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Tutorial
  Person = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.Person").msgclass
  PhoneNumber = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.PhoneNumber").msgclass
  PhoneType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.PhoneType").enummodule
end
