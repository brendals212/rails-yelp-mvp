class Review < ApplicationRecord
  belongs_to :restaurant
  # rails g migration AddRatingToReviews rating:integer
  validates :rating, presence: true, numericality: { only_integer: true }, format: { with: /\A[0-5]\z/ }
  validates :content, presence: true
  validates :rating, presence: true
end
