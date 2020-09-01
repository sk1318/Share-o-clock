class MusicPostsController < ApplicationController
     before_action :admin_user
    
    def new
    end
    
    def create
     @musicpost = MusicPost.create(music_name: params[:music_name],content: params[:content],youtube: params[:youtube])
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
    
    def admin_user
        redirect_to(root_url) unless current_user.admin?
    end
end

