class AddMusicNameToMusicPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :music_posts, :music_name, :string
  end
end
