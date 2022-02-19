class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bakery
  has_one_attached :photo
end
