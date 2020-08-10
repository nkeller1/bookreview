require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :books }
    it { should have_many(:books).through(:author_books) }
  end

  it "has attributes" do
    author1 = Author.create(
      name: 'Brandon Sanderson'
    )

    expect(author1).to have_attributes(name: 'Brandon Sanderson')
  end
end
