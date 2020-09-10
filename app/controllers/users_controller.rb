class UsersController < ApplicationController
    
     before_action :logged_in_user, only: [:edit, :update,:show]
     before_action :correct_user, only: [:edit, :update,:show]

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end
  
  def create
   @user = User.new(user_params) # 実装は終わっていないことに注意!
   @user.image_name ="default.jpg"
    if @user.save
        log_in @user
       flash[:info] = "ようこそ！！"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
      @user = User.find(params[:id])
  end
  
  def update
      @user = User.find(params[:id])
    if  @user.update(user_params)
        flash[:success] = "変更を保存しました！"
        redirect_to @user
    else
        render "edit"
    end
  end
  
  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
  
  def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
  end
 
   def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
   end
   
   
end
