require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :author }
    it { should validate_presence_of :pages }
    it { should validate_presence_of :published }
  end

  it "has attributes" do
    book1 = Book.new(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001
    )

    expect(book1).to have_attributes(
      title: 'Words of Radiance',
      author: 'Brandon Sanderson',
      pages: 1200,
      published: 2001)
  end
end
