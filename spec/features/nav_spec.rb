require 'rails_helper'

RSpec.describe 'Top Nav Bar', type: :feature do
  it "Navigates to home page" do
    visit '/'

    click_link 'Home'

    expect(current_path).to eq('/')
  end

  it "Navigates to books page" do
    visit '/'

    click_link 'All Books'

    expect(current_path).to eq('/books')
  end

  it "Navigates to Poems page" do
    visit '/'

    click_link 'Poem of the Day'

    expect(current_path).to eq('/poems')
  end

  it "Navigates to Author page" do
    visit '/'

    click_link 'Authors'

    expect(current_path).to eq('/authors')
  end
end
