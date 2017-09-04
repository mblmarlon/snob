class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]

  def profile
    @user = User.find(params[:id])
    @items = Item.where(user_id: @user.id)
  end



  def current_profile
    @items = Item.where(user_id: current_user.id)
  end
end
