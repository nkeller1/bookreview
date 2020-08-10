class Book < ApplicationRecord
  validates_presence_of :title, :author, :pages, :published

  has_many :authors
  has_many :authors, through: :author_books
end
