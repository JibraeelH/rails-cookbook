class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories, through: :bookmarks

  validates :description, presence: true
  validates :rating, numericality: { in: 0..10 }
  validates :name, presence: true, uniqueness: true

end
