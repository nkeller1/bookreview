require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end

  describe 'relationships' do
    it { should have_many :ratings }
  end

  describe 'methods' do
    it ".count_total_reviews" do
      user = User.create(name: 'Nate',
        email: 'example@example.com',
        password_digest: 'hello'
      )

      book1 = Book.create(
        title: 'Words of Radiance',
        author: 'Brandon Sanderson',
        pages: 1200,
        published: 2001
      )

      book1.ratings.create(
        title: 'awesome',
        description: 'sweet',
        rating: 5,
        user_id: user.id
      )

      book1.ratings.create(
        title: 'Could be Better',
        description: 'So manhy words',
        rating: 2,
        user_id: user.id
      )

      book1.ratings.create(
        title: 'awesome',
        description: 'sweet',
        rating: 3,
        user_id: user.id
      )

      expect(user.count_total_reviews).to eq(3)
    end
  end
end
