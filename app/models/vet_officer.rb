class VetOfficer < ApplicationRecord
	has_many :cows

	mount_uploader :vprofile_pic, VprofilePicUploader

end

