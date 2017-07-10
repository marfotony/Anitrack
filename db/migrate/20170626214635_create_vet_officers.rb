class CreateVetOfficers < ActiveRecord::Migration[5.0]
  def change
    create_table :vet_officers do |t|
      t.string :name
      t.string :location
      t.integer :phone_number
      t.string :address
      t.string :profile_pic

      t.timestamps
    end
  end
end
