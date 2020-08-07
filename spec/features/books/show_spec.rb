equire 'rails_helper'

RSpec.describe 'books index page', type: :feature do
  it "can see a list of all books" do
    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )

    visit "/books/#{book1.id}"

    expect(page).to have_content('Words of Radiance')
    expect(page).to have_content('Brandon Sanderson')
    expect(page).to have_content(1200)
    expect(page).to have_content(2001)
  end
end
