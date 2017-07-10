class RenameMissingToStatusOnCows < ActiveRecord::Migration[5.0]
  def change
  	rename_column :cows, :missing, :status
  end
end
