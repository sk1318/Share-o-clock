class LikesController < ApplicationController
    def create
   @like =   Like.new(user_id: current_user.id, post_id: params[:post_id])
   @like.save
   @micropost = Micropost.find_by(id: params[:post_id])
   redirect_to("/music/#{@micropost.music_id}")
   flash[:success] = "いいねしました！"
    end
    
    def destroy
       @like =  Like.find_by(user_id: current_user.id, post_id: params[:post_id]) 
       @like.destroy
       @micropost = Micropost.find_by(id: params[:post_id])
    redirect_to("/music/#{@micropost.music_id}")
    end
end
