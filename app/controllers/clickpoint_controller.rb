class ClickpointController < ApplicationController

	def home
		@x = Clickee.first.x
		@y = Clickee.first.y
	end

	def update
		Clickee.first.update_attributes(clickee_params)
		render nothing: true
	end

	private

    	def clickee_params
      		params.require(:clickee).permit(:x, :y)
    	end

end
