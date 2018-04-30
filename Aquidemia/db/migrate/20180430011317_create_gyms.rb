class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.int :rating
      t.int :micro_region
      t.datetime :schedule
      t.decimal :latitude
      t.decimal :longitude
      t.string  :bairro
      t.string  :rua
      t.string  :numero
      
      t.timestamps
    end
  end
end
