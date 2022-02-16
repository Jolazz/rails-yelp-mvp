class Review < ApplicationRecord
  RATING = (0..5)

  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true,
                     numericality: { only_integer: true },
                     inclusion: { in: RATING, message: 'The rating has to be between 0 and 5' }
end
