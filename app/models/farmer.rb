class Farmer < ApplicationRecord
	mount_uploader :profile_pic, ProfilePicUploader

	has_many :cows

	validates :name , presence: true
	validates :farm_size , presence: true
	validates :number_of_animals , presence: true
	validates :farm_location , presence: true
	validates :phone_number , presence: true
	#validates :profile_pic , presence: true
	validates :address , presence: true


end
