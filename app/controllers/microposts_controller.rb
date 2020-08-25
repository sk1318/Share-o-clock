class MicropostsController < ApplicationController
   
   def create
    @micropost = current_user.microposts.build(micropost_params)
    @micropost.image.attach(params[:micropost][:image])
    if @micropost.save
      flash[:success] = "投稿しました！"
      redirect_to "/microposts/show" 
    else
      render 'static_pages/home'
    end
   end
   
  def show
      @microposts = Micropost.all
  end
   
   private
   
   def micropost_params
      params.require(:micropost).permit(:content, :image)
   end
end
