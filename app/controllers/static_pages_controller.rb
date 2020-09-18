class StaticPagesController < ApplicationController
  def home
    if logged_in?
    @musicposts = MusicPost.order(:music_name)
    end
    
  end

   
   def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      flash.now[:danger] = "emailもしくはpasswordが間違っています"
      render "static_pages/home"
    end
   end
end
