class Book < ApplicationRecord
  validates_presence_of :title, :author, :pages, :published

  has_many :author_books
  has_many :authors, through: :author_books
  has_many :ratings
end
