# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
	{ name: 'ishikawa1' , email: 'abc1@abc.jp' , password: '00000000' , password_confirmation: '00000000'},
	{ name: 'ishikawa2' , email: 'abc2@abc.jp' , password: '00000000' , password_confirmation: '00000000'},
	{ name: 'ishikawa3' , email: 'abc3@abc.jp' , password: '00000000' , password_confirmation: '00000000'} 
	])
