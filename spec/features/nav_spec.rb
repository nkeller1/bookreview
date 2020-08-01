require 'rails_helper'

RSpec.describe 'Top Nav Bar', type: :feature do
  it "Navigates to all links" do
    visit '/'

    click_link 'Home'

    expect(current_path).to eq('/')
  end
end
