require 'rails_helper'

RSpec.describe Rating, type: :model do
  describe 'validations' do
    it { should validate_presence_of :description, :rating, :title }
  end

  describe "relationships" do
    it {should belong_to :book}
  end
end
