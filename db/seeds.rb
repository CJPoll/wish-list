# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cody = User.create({email: "CJPoll@gmail.com",
                    password: "password01",
                    password_confirmation: "password01"
})

nikki = User.create({email: "loveth3pug@gmail.com",
                    password: "password01",
                    password_confirmation: "password01"
})
