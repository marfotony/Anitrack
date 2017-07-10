class AddVetofficerToCows < ActiveRecord::Migration[5.0]
  def change
    add_column :cows, :vetofficer, :string
  end
end
