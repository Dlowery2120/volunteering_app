class UsersController < ApplicationController
  before_action :current_user, only: [:show]
  before_action :not_logged_in, only: [:show] 

  def index
    @users = User.all
  end

  def show
    # byebug
    # @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # byebug
    # create an instance of user
    @user = User.new(user_params)
    # check if valid
if @user.valid? 
    # if true
    # create session
    @user.save
   # we are trying to connect current user to project 
   VolunteerSignup.create!(user_id: @user.id, project_id: params[:user][:project_id])
    session[:id] = @user.id
    redirect_to @user
    # if false
else
    # show errors
    flash[:errors] = @user.errors.full_messages
    # come back to form
    redirect_to new_user_path
end

  end

  def edit
    @user = User.find(params[:id])
    
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to login_path
    end


private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :phone_number, :address, :availability)
  end

end


