equire 'rails_helper'

RSpec.describe 'books index page', type: :feature do
  it "can see a list of all books" do
    book1 = Book.create(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )

    visit '/books'

    expect(page).to have_content('Way of Kings')
    expect(page).to have_content('Words of Radiance')
  end
end
