class CreateExhibitAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibit_animals do |t|
      t.belongs_to :animal, foreign_key: true
      t.belongs_to :exhibit, foreign_key: true
      t.boolean :current

      t.timestamps
    end
  end
end
