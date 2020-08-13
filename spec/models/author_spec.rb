require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :books }
    it { should have_many(:books).through(:author_books) }
  end

  it "has attributes" do
    author1 = Author.create(
      name: 'Brandon Sanderson'
    )

    expect(author1).to have_attributes(name: 'Brandon Sanderson')
  end

  describe 'validations' do
    it {should validate_presence_of :name}
  end

  describe 'methods' do
    it ".average_book_rating" do
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
        rating: 5)

      rating2 = book1.ratings.create(
        title: 'Could be Better',
        description: 'So manhy words',
        rating: 2)

      rating3 = book1.ratings.create(
        title: 'Cool',
        description: 'Yay',
        rating: 3)

      rating4 = book1.ratings.create(
        title: 'Hello',
        description: 'test',
        rating: 4)

      book2 = author.books.create(
        title: 'Oathbringer',
        author: 'Brandon Sanderson',
        pages: 1500,
        published: 2009
      )

      rating10 = book2.ratings.create(
        title: 'Good',
        description: 'Yay',
        rating: 4)

      expect(author.average_book_rating).to eq(book1)
    end
  end
end
