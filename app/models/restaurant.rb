class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy # @restaurant.reviews

  # CATEGORYS = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}

  # inclusion: {in: SPECIES}

end
