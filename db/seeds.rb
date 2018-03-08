# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

books = []

20.times do |i|
    new_book = {
      id: i,
      authors: Faker::Name.name,
      title: Faker::Book.title,
      publisher: Faker::Book.publisher,
      publishedDate:Faker::Date.between(100.days.ago, Date.today),
      description: Faker::Lorem.sentence,
      genre: [:Adventure, :SF, :Romance, :Classic, :Comedy, :Other].sample,
    }
    books.push(new_book)
end

# save fake datas to db
Book.create(books)
