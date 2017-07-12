class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
    @resume = Resume.last
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      redirect_to interests_path
    else
      render "new"
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
    if @resume.update_attributes(resume_params)
      redirect_to interests_path
    else 
      render 'edit'
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path
  end

private

  def resume_params
    params.require(:resume).permit(:attachment)
  end
  
end
