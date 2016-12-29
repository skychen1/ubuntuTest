class RelationshipsController < ApplicationController
  def create
    user=User.find(params[:followed_id])
    if current_user.following?(user)
      
    else
      current_user.follow(user)
      respond_to do |format|
        format.html{redirect_to @user}
        format.js
      end
    end
   # redirect_to user
  end
  def destroy
    user=Relationship.find(params[:id]).followed
    if current_user.following?(user)
      current_user.unfollow(user)
    end
    respond_to do |format|
      format.html{redirect_to @user}
      format.js
    end
    #redirect_to user
  end
end
