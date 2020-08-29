class MusicController < ApplicationController
    def show
       @musicpost = MusicPost.find_by(id: params[:music_id])  
    end 
end
