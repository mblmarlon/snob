class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @item = Item.find(params[:item_id])
    if @favorite.save! && @item
      respond_to do |format|
        format.html {
          # todo add a proper redirection
          redirect_to root_path
        }
        format.js {}
      end
    else
      # handle error render
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @item = @favorite.item
    @user = current_user
    if @favorite.destroy
      respond_to do |format|
        format.html {
          # todo add a proper redirection
          redirect_to root_path
        }
        format.js {}
      end
    else
      # handle error render
    end
  end

  private
  def favorite_params
    params.permit(:user_id, :item_id)
  end
end
