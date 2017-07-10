class Farmer < ApplicationRecord
	has_many :cows

	mount_uploader :profile_pic, ProfilePicUploader
end
