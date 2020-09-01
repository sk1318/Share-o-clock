class MusicPost < ApplicationRecord
     validates :content, presence: true
     validates :youtube, presence: true
     validates :music_name, presence: true
    
   

end
