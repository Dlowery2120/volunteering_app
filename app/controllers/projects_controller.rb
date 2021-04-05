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
    @project = Project.create!(name: params[:project][:name], date: params[:project][:date], bio: params[:project][:bio], admin_id: session[:id])

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

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admlogin_path
  end
private

  def project_params
    params.require(:project).permit(:name, :date, :bio)
  end

end
