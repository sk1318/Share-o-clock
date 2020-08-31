class AddYoutubeToMusicPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :music_posts, :youtube, :text
  end
end
