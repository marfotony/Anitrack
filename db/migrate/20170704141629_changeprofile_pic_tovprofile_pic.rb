class ChangeprofilePicTovprofilePic < ActiveRecord::Migration[5.0]
  def change
  	rename_column :vet_officers, :profile_pic, :vprofile_pic
  end
end
