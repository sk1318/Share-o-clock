class StaticPagesController < ApplicationController
  def home
    if logged_in?
    @musicposts = MusicPost.all
    end
    
  end
end
