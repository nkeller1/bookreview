require 'rails_helper'

RSpec.describe 'books index page', type: :feature do
  it "can navigate to /books" do
    visit '/'

    click_on 'All Books'

    expect(current_path).to eq('/books')
    expect(page).to have_content("Book List")
  end

  it "can see a list of all books" do
    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )
    book2 = Book.create(
      title: 'Way of Kings',
      author: 'Brandon Sanderson',
      pages: 1400,
      published: 1999
    )

    visit '/books'

    expect(page).to have_content('Way of Kings')
    expect(page).to have_content('Words of Radiance')
  end

end
