class Animal < ApplicationRecord
  belongs_to :species
  has_many :exhibit_animals
  has_many :exhibits, through: :exhibit_animals

  enum gender: { male: 0, female: 1, unknown: 2 }
end
