class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
   @user = User.new(user_params)    # 実装は終わっていないことに注意!
    if @user.save
       flash[:info] = "Welcome to the Sample App!"
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
 
   def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
   end
end
