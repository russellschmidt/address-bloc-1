require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')

puts 'Address Book created'
puts 'Entry created'
puts Entry.create(address_book_id: book.id, name: "Bob McRoberts", phone_number: '212-555-1000', email: 'bob_mcroberts@earthlink.net')
puts Entry.create(address_book_id: book.id, name: "Howard Howardson", phone_number: '213-555-1001', email: 'hh@aol.com')
puts Entry.create(address_book_id: book.id, name: "Sally Seashells", phone_number: '214-555-1002', email: 'sally@seashells.org')
