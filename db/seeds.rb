# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def seedTheDatabase
  User.create(user_name: "Jon", email: "jon@jon.com")
  User.create(user_name: "Adam", email: "adam@adam.com")

  newCase = Case.create(title: "A Test Case")
  User.find(1).cases << newCase
  User.find(2).cases << newCase
  Evidence.create(argument: "This is the winning argument. There can be no other possible solution to this argument that makes any sense at all. Blah blah blah blah. More argument stuff here - blah blah blah blah", mediatype: "written", party: "1", cases_user_id: '1')
   Evidence.create(argument: "This is the other winning argument. Blah blah blah blah", mediatype: "written", party: "2", cases_user_id: '2')
 end

 seedTheDatabase


