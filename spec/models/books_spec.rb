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

  it ".average_rating" do
    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello'
    )

    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )

    book1.ratings.create(
      title: 'awesome',
      description: 'sweet',
      rating: 5,
      user_id: user.id
    )

    book1.ratings.create(
      title: 'Could be Better',
      description: 'So manhy words',
      rating: 2,
      user_id: user.id
    )

    book1.ratings.create(
      title: 'awesome',
      description: 'sweet',
      rating: 3)

    expect(book1.average_rating).to eq(3.5)
  end

  it ".count_total_reviews" do
    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello'
    )

    book1 = Book.create(
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
      title: 'awesome',
      description: 'sweet',
      rating: 3,
      user_id: user.id
    )

    expect(book1.count_total_reviews).to eq(3)
  end

  it ".gather_three_highest_reviews" do
    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello'
    )

    book1 = Book.create(
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
      user_id: user.id
    )

    rating4 = book1.ratings.create(
      title: 'Hello',
      description: 'test',
      rating: 4,
      user_id: user.id
    )

    expect(book1.gather_three_highest_reviews).to eq([rating1, rating4, rating3])
  end

  it ".gather_three_lowest_reviews" do
    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello'
    )

    book1 = Book.create(
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
      user_id: user.id
    )

    rating4 = book1.ratings.create(
      title: 'Hello',
      description: 'test',
      rating: 4,
      user_id: user.id
    )

    expect(book1.gather_three_lowest_reviews).to eq([rating2, rating3, rating4])
  end
end
