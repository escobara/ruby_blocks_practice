require './song.rb'

class Playlist
	include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each 
  	@songs.each do |song|
  		puts "Yielding #{song.name}..."
  		yield song
  	end
  end

  def play_songs
  	each(&:play)
  end
end



song1 = Song.new("Okie From Muskogee", "Merle", 5)
song2 = Song.new("Ramblin' Man", "Hank", 7)
song3 = Song.new("Good Hearted Woman", "Waylon", 6)

playlist = Playlist.new("Friday Night Playlist")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)


playlist.each { |song| song.play }
playlist.play_songs
