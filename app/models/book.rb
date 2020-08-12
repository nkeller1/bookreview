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

  def gather_three_highest_reviews
    self.ratings.order('rating DESC').limit(3)
  end

  def gather_three_lowest_reviews
    self.ratings.order(:rating).limit(3)
  end
end
