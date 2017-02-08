class FriendshipsController < ApplicationController
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    respond_to do |format|
      format.html { redirect_to my_friends_path, notice: "You were just somebody that used to know" }
    end
  end
end
