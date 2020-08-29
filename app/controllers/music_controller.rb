class MusicController < ApplicationController
    def show
       @musicpost = MusicPost.find_by(id: params[:music_id])  
       
       @microposts = Micropost.where(music_id: params[:music_id])
    end 
end
