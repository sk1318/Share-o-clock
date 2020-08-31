class MusicPostsController < ApplicationController
    
    def new
    end
    
    def create
     @musicpost = MusicPost.create(content: params[:content],youtube: params[:youtube])
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
    
    def edit
      @musicpost = MusicPost.find_by(id: params[:music_id])  
    end
    
    def update
       @musicpost = MusicPost.find_by(id: params[:music_id]) 
       @musicpost.update(content: params[:content],youtube: params[:youtube])
        flash[:success] = "変更を保存しました！"
        redirect_to "/music/#{params[:music_id]}"
    end
end

