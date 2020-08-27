require 'rails_helper'

RSpec.describe 'book create page', type: :feature do
  it "can create a new book" do
    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001,
    )

    author1 = Author.create(name: 'Brandon Sanderson')

    author1.books << book1

    user = User.create(name: 'Nate',
      email: 'example@example.com',
      password_digest: 'hello')

    title = "Stromlight Archives"
    pages = 1392
    published = 1999
    author = "Brandon Sanderson"

    visit '/books'

    click_on 'Add New Book'

    expect(current_path).to eq('/books/new')

    fill_in :title, with: title
    fill_in :pages, with: pages
    fill_in :published, with: published
    fill_in :author, with: author

    click_on "Add Book"

    new_book = Book.last

    expect(current_path).to eq('/books')
    expect(page).to have_content(new_book.title)
    expect(page).to have_content(new_book.author)
    expect(page).to have_content(new_book.published)
    expect(page).to have_content(new_book.pages)
  end
end
