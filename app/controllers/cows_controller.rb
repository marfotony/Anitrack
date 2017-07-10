class CowsController < ApplicationController
	before_action :set_farmer
	before_action  :set_vet
	
	def index
		
	end

	def show

	end
    
    def new
		# @farmer_options = Farmer.all.map{|f| [ f.name, f.id]}
		# @vet_officer_options = VetOfficer.all.map{|v| [ v.name, v.id]}
		@farmer_options = Farmer.all
		@vet_officer_options = VetOfficer.all
		@cow = Cow.new
		
	end



	def create
		#@cow = Cow.new(cow_params)
        @cow = @farmer.cows.build(cow_params)
        @cow.VetOfficer_id = vet_officer.id
		if @cow.save 
			@success = "Cow added successfully"
		else 
			@error = "Unable to save. Please try again"
		end
		render 'new'
		
	end

	def destroy
		
	end

	def update
		
	end

	def edit
		
	end

	
	private

	def cow_params
		params.require(:cow).permit(:farmer_id,:VetOfficer_id,:cow_owner, :date_of_birth, :weight, :color, :tag_number, :temperature, :status)
	end

	def set_farmer
		@farmer = Farmer.find(params[:farmer_id])
	end

	def set_vet
        @vet_officer = VetOfficer.find(params[:VetOfficer_id])
	end	

end