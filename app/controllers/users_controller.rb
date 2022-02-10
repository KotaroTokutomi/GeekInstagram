class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @followers = Relationship.where(follow_id: @user.id).count
    @follow = Relationship.where(user_id: @user.id).count
  end
end
