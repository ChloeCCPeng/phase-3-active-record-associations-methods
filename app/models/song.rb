require "pry"
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  # Return the name of the genre this song belongs to.
  def get_genre_name
    # binding.pry
    self.genre.name
  end

  def drake_made_this
    # changes the artist who made the song to Drake
    # creates only one Drake artist in the database, even if run multiple times
    drake = Artist.find_or_create_by name: "Drake"
    update artist: drake
  end
end
