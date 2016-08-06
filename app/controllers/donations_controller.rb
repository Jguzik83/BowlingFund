class DonationsController < ApplicationController

  def new
    @donation = Donation.new
    @user = User.find_by(id: params[:user_id])
    if @user
      @donations = Donation.where(user_id: @user.id)
    end
  end

  def create
    donation = Donation.new(donation_params)
    if donation.save
      user = User.find_by(id: donation_params[:user_id])
      redirect_to root_path
    end
  end


  private

  def donation_params
    params.require(:donation).permit(:from, :pledge, :note, :user_id)
  end


end
