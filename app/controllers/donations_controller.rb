class DonationsController < ApplicationController

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    @donation = Donation.new
  end

    def create
      # @donation = Donation.new(donation_params)
      # @donation.save

      @donation = Donation.create!(amount: params[:donation][:amount], user_id: session[:id], project_id: params[:donation][:project_id])
      
       
       
      redirect_to current_user
    end

  def edit
    @donation = Donation.find(params[:id])
  end
  
  def update
    @donation = Donation.find(params[:id])
    @donation.update(donation_params)
    redirect_to @donation
  end

private

  def donation_params
    params.require(:donation).permit(:amount, :user_id, :project_id)
  end

end

