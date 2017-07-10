class AddfarmerIdToCows < ActiveRecord::Migration[5.0]

  def change
  	add_reference :cows, :farmer, foreign_key: true
  end
end
