class MicropostsController < ApplicationController
   
   def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to "/users/#{@current_user.id}" 
    else
      render 'static_pages/home'
    end
   end
   
   private
   
   def micropost_params
      params.require(:micropost).permit(:content)
   end
end
