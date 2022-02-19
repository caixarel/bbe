class Tag < ApplicationRecord
  belongs_to :bakery
  has_many :user_tags, dependent: :destroy

end
