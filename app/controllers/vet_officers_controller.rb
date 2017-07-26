class VetOfficersController < ApplicationController

	def index
		@vet_officers = VetOfficer.all
	end

	def show
		@vet_officer = VetOfficer.find(params[:id])
	end

	def new
		@vet_officer = VetOfficer.new
	end

	def create
		@vet_officer = VetOfficer.new(farmer_params)

		if @vet_officer.save
				@success = "New VetOfficer added"
				redirect_to cows_path
		else
			@error = "Unable to save. Please try again"
				render 'new'
		end

	end

	def update

	end

	def destroy

	end

	def method_name

	end

    private

    def farmer_params
    	params.require(:vet_officer).permit(:name,:location,:phone_number,:address,:vprofile_pic)
    end
end
