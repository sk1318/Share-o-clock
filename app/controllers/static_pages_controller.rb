class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if logged_in?
    @music_names = ["stand out fit in","wasted nights","未完成行進曲","じぶんrock"] 
  end
end
