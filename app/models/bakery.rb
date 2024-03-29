class Bakery < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :tags, dependent: :destroy
  belongs_to :user
  has_many_attached :pictures
  geocoded_by :address
  after_validation :geocode

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
