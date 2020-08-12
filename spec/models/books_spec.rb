require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :author }
    it { should validate_presence_of :pages }
    it { should validate_presence_of :published }
  end

  describe 'relationships' do
    it { should have_many :authors }
    it { should have_many(:authors).through(:author_books) }
    it { should have_many :ratings }
  end

  it "has attributes" do
    book1 = Book.new(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )

    expect(book1).to have_attributes(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001)
  end

  it "can calculate the average rating of a book" do
    book1 = Book.create(
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
      title: 'awesome',
      description: 'sweet',
      rating: 3)


    expect(book1.average_rating).to eq(3.33)
  end
end
