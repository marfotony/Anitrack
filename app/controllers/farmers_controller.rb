class FarmersController < ApplicationController
	def index
		
	end

	def show
		@farmer = Farmer.find(params[:id])
	end

	def new
		@farmer = Farmer.new
	end

	def create
		@farmer = Farmer.new(farmer_params)

		if @farmer.save
				@success = "Cow added successfully"
		else 
			@error = "Unable to save. Please try again"
		end
		render 'new'
	end

	def update
		
	end

	def destroy
		
	end

	def method_name
		
	end

    private

    def farmer_params
    	params.require(:farmer).permit(:name,:farm_size,:number_of_animals,:farm_location,:phone_number,:address,:profile_pic)
    end
end
