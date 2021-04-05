class AdminsController < ApplicationController
  
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    @admin.save

    redirect_to @admin
  end

  def edit
    @admin = Admin.find(params[:id])
    
  end
  
  def update
    @admin = Admin.find(params[:id])
    @admin.update(admin_params)
    redirect_to @admin
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admlogin_path
  end

private

  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :email, :password, :age, :phone_number, :address)
  end
end
