class VetOfficer < ApplicationRecord
	has_many :cows

		mount_uploader :vprofile_pic, VprofilePicUploader

	validates  :name ,  presence: true
	validates  :location , presence: true
	validates  :phone_number , presence: true
#	validates  :vprofile_pic , presence: true
	validates  :address , presence: true



end

