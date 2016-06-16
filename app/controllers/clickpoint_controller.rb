class ClickpointController < ApplicationController

	def home
		@clickees = Clickee.all
	end

	def lastID
		unless Clickee.count == 0
			@newClickeeID = Clickee.last.id + 1
		end
		respond_to do |format|
        	format.html { render :layout => false }
        	format.json
      	end
	end

	def update
		Clickee.first.update_attributes(clickee_params)
		render nothing: true
	end

	def create
		@clickee = Clickee.new(clickee_params)
    	@clickee.save
    	render nothing: true
	end

	private

    	def clickee_params
      		params.require(:clickee).permit(:x, :y)
    	end

end
