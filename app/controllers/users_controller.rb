class UsersController < ApplicationController
  before_action :set_user, only: [:show, :follow, :unfollow]

  def show
  end

  def follow

    @current_user.follow(@user)
    @follow = Follow.find_by(follower: @current_user, followable: @user)
    respond_to do |format|
      format.html {redirect_to @user}
      format.js
    end
  end

  def unfollow
    @current_user.stop_following(@user)
    respond_to do |format|
      format.html {redirect_to @user}
      format.js
    end
  end

  private

  def set_user
    @current_user = current_user

    @user = User.find(params[:id])
  end
end
