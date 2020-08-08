require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
  end

  it "has attributes" do
    author1 = Author.create(
      name: 'Brandon Sanderson'
    )

    expect(author1).to have_attributes(name: 'Brandon Sanderson')
  end
end
