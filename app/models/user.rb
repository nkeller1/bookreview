class User < ApplicationRecord
  validates_presence_of :name, :email
  has_many :ratings
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: { presence: true, case_sensitive: true }

  has_secure_password

  def count_total_reviews
    self.ratings.length
  end
end
