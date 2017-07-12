class Cow < ApplicationRecord
	belongs_to :farmer
	belongs_to :vet_officer

	#validates :cow_owner , presence: true
	validates :date_of_birth , presence: true
	validates :weight , presence: true
	validates :color , presence: true
	validates :tag_number , presence: true
	validates :temperature , presence: true
	#validates :vetofficer , presence: true


end
