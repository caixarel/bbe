class Favourite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :bakery, dependent: :destroy
end
