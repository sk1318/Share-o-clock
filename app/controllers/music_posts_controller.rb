class MusicPostsController < ApplicationController
    
    def new
    end
    
    def create
     @musicpost = MusicPost.create(content: params[:content])
    if @musicpost.save
      flash[:success] = "投稿しました！"
      redirect_to  music_show_path
    else
      render "static_pages/home"
    end
    end
    
    def show
    @musicposts = MusicPost.all
    end
    
end
