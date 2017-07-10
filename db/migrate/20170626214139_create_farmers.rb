class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :name
      t.integer :farm_size
      t.integer :number_of_animals
      t.string :farm_location
      t.integer :phone_number
      t.string :address
      t.string :profile_pic

      t.timestamps
    end
  end
end
