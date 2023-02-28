# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some sample users
user1 = User.create(name: "Alice")
user2 = User.create(name: "Bob")
user3 = User.create(name: "Charlie")

# Create some sample products
product1 = Product.create(name: "iPhone", price: 999.99)
product2 = Product.create(name: "MacBook", price: 1499.99)
product3 = Product.create(name: "iPad", price: 799.99)

# Create some sample reviews
review1 = Review.create(user: user1, product: product1, star_rating: 4, comment: "Great phone!")
review2 = Review.create(user: user2, product: product1, star_rating: 3, comment: "It's okay")
review3 = Review.create(user: user3, product: product2, star_rating: 5, comment: "Love it!")
review4 = Review.create(user: user1, product: product2, star_rating: 4, comment: "Great laptop")
review5 = Review.create(user: user2, product: product3, star_rating: 2, comment: "Not impressed")
review6 = Review.create(user: user3, product: product3, star_rating: 3, comment: "It's okay")
