class CreateMusicPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :music_posts do |t|
      t.text :content

      t.timestamps
    end
  end
end
