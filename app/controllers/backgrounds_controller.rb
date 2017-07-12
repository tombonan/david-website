class BackgroundsController < ApplicationController
	def index
		@background = Background.first
	end

	def new
		@background = Background.new
	end

	def create
		@background = Background.new(background_params)
		if @background.update_attributes(background_params)
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def edit
		@background = Background.find(params[:id])
	end

	def update
		@background = Background.find(params[:id])
		if @background.update_attributes(background_params)
			redirect_to action: 'index'
		else
			render 'edit'
		end
	end

	private

	def background_params
		params.require(:background).permit(:about, :contact)
	end
end
