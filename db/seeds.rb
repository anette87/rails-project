# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username:"Ana", email:"ana@gmail.com", password_digest:"1234")
category = Category.create(name:"TV Shows")
product = Product.create(name:"The Office",category: category)
figure = Figure.create(name:"Michael Scott",product: product)
UserFigure.create(user: user,figure: figure)
Comment.create(comment:"Hello",user: user,figure: figure)
