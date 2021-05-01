class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  # validates :photo, presence: true
  validates :name, presence: true, uniqueness: true
  # validates :description. presence: true
  # validates :alcohol, presence: true
end
