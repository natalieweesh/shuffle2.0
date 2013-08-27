class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :title

  has_many :user_uploadeds
  has_many :uploading_users, through: :user_uploadeds, source: :user
  
  has_many :user_histories
  has_many :listeners, through: :user_histories, source: :user

    def self.get_random(cu)
    @merged_arrays = cu.uploaded_songs.pluck(:id) + cu.history_songs.pluck(:id)
    unless @merged_arrays.empty?
      @random_songs = Song.where("id NOT IN (?)", @merged_arrays)
      rid = (rand * (@random_songs.length)).floor
      return @random_songs[rid] if @random_songs.length != 0
    end
    Song.find((rand * Song.count).floor + 1)
  end

end