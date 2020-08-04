require 'rails_helper'

RSpec.describe 'books page', type: :feature do
  it "can navigate to /books" do
    visit '/'

    click_on 'All Books'

    expect(current_path).to eq('/books')
  end
end
