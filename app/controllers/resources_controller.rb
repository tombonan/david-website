class ResourcesController < ApplicationController
	def new
		@resource = Resource.new
	end

	def create
		@resource = Resource.new(resource_params)
		if @resource.save
      		redirect_to interests_path
    	else
      		render "new"
    	end
	end

	def edit
		@resource = Resource.find(params[:id])
	end

	def update
		@resource = Resource.find(params[:id])
    	if @resource.update_attributes(resource_params)
      		redirect_to editresources_path
    	else 
      		render 'edit'
    	end
	end

	def destroy
    	@resource = Resource.find(params[:id])
    	@resource.destroy
    	redirect_to editresources_path
  	end

  	private

  	def resource_params
    	params.require(:resource).permit(:title, :document, :link, :category, :description)
  	end
end
