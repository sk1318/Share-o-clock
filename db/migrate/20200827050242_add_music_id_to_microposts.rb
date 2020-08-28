class AddMusicIdToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :music_id, :integer
  end
end
