class RenameBooleanToTextOnCows < ActiveRecord::Migration[5.0]
  def change
  	change_column :cows, :status, :string
  end
end
