class VetOfficersController < ApplicationController

	def index

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
				redirect_to vet_officers_path
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
