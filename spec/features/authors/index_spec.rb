require 'rails_helper'

RSpec.describe 'authors index page', type: :feature do
  it "can see a list of all authors" do
    author1 = Author.create(
      name: 'Brandon Saunderson'
    )

    author2 = Author.create(
      name: 'Edgar Allen Poe'
    )

    visit "/authors"
    require "pry"; binding.pry
    expect(page).to have_content('Brandon Saunderson')
    expect(page).to have_content('Edgar Allen Poe')
  end
end
