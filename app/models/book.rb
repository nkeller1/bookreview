class Book < ApplicationRecord
  validates_presence_of :title, :author, :pages, :published

  has_many :author_books
  has_many :authors, through: :author_books
  has_many :ratings

  def average_rating
    self.ratings.average(:rating).to_f.round(2)
  end

  def count_total_reviews
    self.ratings.length
  end

end
