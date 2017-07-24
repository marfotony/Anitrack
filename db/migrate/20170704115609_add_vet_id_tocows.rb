class AddVetIdTocows < ActiveRecord::Migration[5.0]
  def change
  	add_reference :cows, :vet_officers, foreign_key: true
  end
end
