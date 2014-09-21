class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :rating, inclusion: { in: 1..5 }
end
