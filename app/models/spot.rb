# app/models/spot.rb
class Spot < ApplicationRecord
  has_many_attached :images
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end

