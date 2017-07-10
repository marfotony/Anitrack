module CowsHelper
	def generate_status
		status_array = ["Good","Bad","Unknown"]
		status_array.map do | status|
			[status, status]
		end
		
	end
end
