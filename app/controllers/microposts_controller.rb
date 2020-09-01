class MicropostsController < ApplicationController
  before_action :logged_in_user
   
   def create
    @micropost = current_user.microposts.build(content: params[:content])
    @micropost.music_id = params[:music_id]
    
    if @micropost.save
      flash[:success] = "投稿しました！"
      redirect_to "/music/#{params[:music_id]}" 
    else
      render 'music/show'
    end
   end
   
   
  def show
      @microposts = Micropost.paginate(page: params[:page])
  end
   
   private

end
