class ClickpointController < ApplicationController

	def home
		@top = "50px"
		@left = "50px"
	end

	def update
		@top = params[:top]	
		@left = params[:left]
		@pastGig.update_attributes(clickee_params)
	end

	private

    	def clickee_params
      		params.require(:clickee).permit(:top, :left)
    	end

end
