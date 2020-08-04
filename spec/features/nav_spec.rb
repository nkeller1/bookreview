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
end
