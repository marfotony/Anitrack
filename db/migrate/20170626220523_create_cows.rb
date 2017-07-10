class CreateCows < ActiveRecord::Migration[5.0]
  def change
    create_table :cows do |t|
      t.string :cow_owner
      t.string :date_of_birth
      t.integer :weight
      t.string :color
      t.string :tag_number
      t.string :temperature
      t.boolean :missing

      t.timestamps
    end
  end
end
