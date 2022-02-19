class Bakery < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :specialities, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :tags, dependent: :destroy
  belongs_to :user
end
