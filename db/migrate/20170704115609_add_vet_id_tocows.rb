class AddVetIdTocows < ActiveRecord::Migration[5.0]
  def change
  	add_reference :cows, :VetOfficer, foreign_key: true
  end
end
