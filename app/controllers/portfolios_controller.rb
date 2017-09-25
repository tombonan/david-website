class PortfoliosController < ApplicationController
	def index
		@images = Portfolio.all
	end
	
	def new
		@image = Portfolio.new
	end

	def create
		@image = Portfolio.new(image_params)
		if @image.update_attributes(image_params)
			redirect_to @image
		else 
			render 'new'
		end
	end

	def destroy
		@image = Portfolio.friendly.find(params[:id])
		@image.destroy
		redirect_to root_path
	end

	def edit
		@image = Portfolio.friendly.find(params[:id])
	end

	def update
		@image = Portfolio.friendly.find(params[:id])
		if @image.update_attributes(image_params)
			redirect_to @image
		else
			render 'edit'
		end
	end

	def show
		@image = Portfolio.friendly.find(params[:id])
	end

	private

	def image_params
		params.require(:portfolio).permit(:title, :image, :description, :category, :price, :medium, :dimensions)
	end
end
