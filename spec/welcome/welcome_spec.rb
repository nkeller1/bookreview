require 'rails_helper'

RSpec.describe 'welcome index page', type: :feature do
  it "can navigate to the weclome page" do

    visit '/'

    expect(page).to have_content("Book Review's, Man")
  end
end
