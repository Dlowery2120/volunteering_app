class VolunteerSignupsController < ApplicationController
    
    def new
        @volunteer_signup = VolunteerSignup.new
    end


    def create
        @volunteer_signup = VolunteerSignup.create!(user_id: session[:id], project_id: params[:volunteer_signup][:project_id])
      
       
        redirect_to current_user
    end

    def destroy
        @volunteer_signup = VolunteerSignup.find(params[:id])
        @volunteer_signup.destroy
        redirect_to current_user
    end

    private
    
    def volunteer_signup_params
        params.require(:volunteer_signup).permit(:user_id, :project_id)
       
    end
end
