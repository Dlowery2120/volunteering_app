class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(admin_params)
    @project.save

    redirect_to @project
  end

  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def delete

  end

private

  def project_params
    params.require(:project).permit(:name, :date, :bio)
  end

end
