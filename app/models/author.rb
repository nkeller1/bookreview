class Author < ApplicationRecord
  validates_presence_of :name

  has_many :author_books
  has_many :books, through: :author_books

  def average_book_rating
    average_all_books = self.books.map do |book|
      book.average_rating
    end
    average_all_books.sum / average_all_books.length
  end

  def count_total_reviews
    total_reviews = self.books.map do |book|
      book.ratings.length
    end
    total_reviews.sum
  end
end
