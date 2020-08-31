class MusicPost < ApplicationRecord
     validates :content, presence: true
     validates :youtube, presence: true
end
