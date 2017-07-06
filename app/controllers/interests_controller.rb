class InterestsController < ApplicationController
	def index
		@interests = Interest.all
	end

	def new
		@interest = Interest.new
	end

	def create
		@interest = Interest.new(interest_params)
		if @interest.update_attributes(interest_params)
			redirect_to action: 'index'
		else 
			render 'new'
		end
	end

	def edit
		@interest = Interest.find(params[:id])
	end

	def update
		@interest = Interest.find(params[:id])
		if @interest.update_attributes(interest_params)
			redirect_to action: 'index'
		else 
			render 'edit'
		end
	end

	private

	def interest_params
		params.require(:interest).permit(:topics, :positions)
	end
end
