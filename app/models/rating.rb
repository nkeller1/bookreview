class Rating < ApplicationRecord
  validates_presence_of :title, :description, :rating

  belongs_to :book
end
