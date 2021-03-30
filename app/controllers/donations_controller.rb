class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)
    @donation.save

    redirect_to @donation
  end

  def edit
    @donation = Donation.find(params[:id])
    
    
  end
  
  def update
    @donation = Donation.find(params[:id])
    @donation.update(donation_params)
    redirect_to @donation
  end

  def delete
    
  end

private

  def donation_params
    params.require(:donation).permit(:amount, :user_id, :project_id)
  end

end

