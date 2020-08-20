# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Nate',
  email: 'example@example.com',
  password_digest: 'hello'
)

author = Author.create(name: "Brandon Sanderson")

book1 = author.books.create(
  title: 'Words of Radiance',
  author: 'Brandon Sanderson',
  pages: 1200,
  published: 2001
)

rating1 = book1.ratings.create(
  title: 'awesome',
  description: 'sweet',
  rating: 5,
  user_id: user.id
)

rating2 = book1.ratings.create(
  title: 'Could be Better',
  description: 'So manhy words',
  rating: 2,
  user_id: user.id
)

rating3 = book1.ratings.create(
  title: 'Cool',
  description: 'Yay',
  rating: 3,
  user_id: user.id,
)

rating4 = book1.ratings.create(
  title: 'Hello',
  description: 'test',
  rating: 4,
  user_id: user.id
)

book2 = author.books.create(
  title: 'Oathbringer',
  author: 'Brandon Sanderson',
  pages: 1500,
  published: 2009
)

rating10 = book2.ratings.create(
  title: 'Good',
  description: 'Yay',
  rating: 4,
  user_id: user.id
)
