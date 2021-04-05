class AdmsessionsController < ApplicationController
    
    def new 
        @admin = Admin.new
    end

    def create 
        #find admin
        @admin = Admin.find_by(email: params[:admin][:email])
        # authenticate 
        # if authenticated 
        if @admin && @admin.authenticate(params[:admin][:password])
        # create a session
        session[:id] = @admin.id
        # redirect to admin page 
        redirect_to @admin
        # else
        else
        # redirect back to form
        flash[:errors] = ['Email or Password is incorrect']
        redirect_to admlogin_path
        end
    end

    def destroy
        session.clear
        redirect_to admlogin_path
    end


end
