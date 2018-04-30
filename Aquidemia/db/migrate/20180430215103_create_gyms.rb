class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.integer :number
      t.integer :rpa
      t.string :microregion
      t.integer :cnes
      t.string :name
      t.string :adress
      t.string :bairro
      t.string :phone
      t.decimal :latitude
      t.decimal :longitude
      t.string :hour
      t.decimal :rating

      t.timestamps
    end
  end
end
