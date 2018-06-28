class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @microposts = current_user.microposts.build
      @microposts =current_user.microposts.order('create_at DESC').page(params[:page])
    end
  end
end
