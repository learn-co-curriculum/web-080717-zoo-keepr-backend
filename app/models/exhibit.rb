class Exhibit < ApplicationRecord
  has_many :exhibit_animals
  has_many :animals, through: :exhibit_animals
end
