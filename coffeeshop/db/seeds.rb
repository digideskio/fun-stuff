# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
beans = Bean.create([
        {name: "Micah's Bold Beard Blend", roast: "dark", origin: "Syracuse", quantity: 100},
        {name: "Shawn's Mustache Mayhem Blend", roast: "hella strong", origin: "Texas", quantity: 101}
      ])