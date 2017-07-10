class Cow < ApplicationRecord
	belongs_to :farmer
	belongs_to :vet_officer
end
