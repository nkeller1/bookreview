require 'rails_helper'

RSpec.describe 'books show page', type: :feature do
  it "can see a list of all books and thier attributes" do
    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001,
    )

    book2 = Book.create(
      title: 'Oathbringer',
      author: 'Brandon Sanderson',
      pages: 1500,
      published: 2004,
    )

    author1 = Author.create(name: 'Brandon Sanderson')

    author1.books << book1
    author1.books << book2

    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello'
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

    visit "/authors/#{author1.id}"

    expect(page).to have_content('Words of Radiance')
    expect(page).to have_content('Brandon Sanderson')
    expect(page).to have_content(3.3)
  end
end
