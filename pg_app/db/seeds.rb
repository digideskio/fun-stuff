# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create(name:"Glenn",age:21,hungry:true,life_story:"Lorem Ipsum")
User.create(name:"Shawn",age:21,hungry:false,life_story:"Lorem Ipsum")
User.create(name:"Micah",age:21,hungry:true,life_story:"Lorem Ipsum")
User.create(name:"Dan",age:21,hungry:false,life_story:"Lorem Ipsum")
User.create(name:"Stanley",age:21,hungry:true,life_story:"Lorem Ipsum")