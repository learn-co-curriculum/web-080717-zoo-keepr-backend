class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :species_name
  belongs_to :species

  def species_name
    object.species.name
  end

end
