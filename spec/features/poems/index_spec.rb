require 'rails_helper'

RSpec.describe 'poems page', type: :feature do
  it "randomly GETS a random poem", :vcr do

    visit "/poems"

    expect(page).to have_content('Title:')
    expect(page).to have_content('Poem:')
    expect(page).to have_content('Poem Url:')
    expect(page).to have_content('Poet Name:')
    expect(page).to have_content('Poet Url:')
  end
end
