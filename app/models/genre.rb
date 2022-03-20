class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.count
  end

  # returns an array of strings containing every musicians name
  def all_artist_names
    # artists.map do |artist|
    #   artist.name
    # end
    artists.pluck :name
  end
end
