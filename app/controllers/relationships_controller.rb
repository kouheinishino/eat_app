class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:follow_id])
    following = @current_user.follow(@user)
    if following.save
      flash[:notice] = 'ユーザーをフォローしました'
      redirect_to("/users/#{@user.id}")
    else
      redirect_to("/users/#{@user.id}")
    end
  end

  def destroy
    @user = User.find(params[:follow_id])
    following = @current_user.unfollow(@user)
    if following.destroy
      flash[:notice] = 'ユーザーのフォローを解除しました'
      redirect_to("/users/#{@user.id}")
    else
      redirect_to("/users/#{@user.id}")
    end
  end
end
