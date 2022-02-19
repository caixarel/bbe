class Bakery < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :specialities, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :tags, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
