class WelcomeController < ApplicationController

  def index
    @users = User.all
    @total = User.total_funds
  end

  def pledged
    @pledge = @total / 1500 * 100
  end

  private


end
