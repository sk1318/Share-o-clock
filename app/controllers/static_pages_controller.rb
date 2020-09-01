class StaticPagesController < ApplicationController
  def home
    @musicposts = MusicPost.all
    
  end
end
