class Polarity < ActiveRecord::Base
  attr_accessible :is_good, :song_id, :user_id
  belongs_to :user
  belongs_to :song
end
