class Song
  attr_accessor :artist, :name, :genre
 
  def initialize(name, genre)
    @name = name
    @genre = genre
  end

end

class Artist
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end  
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self
  end
  
end

palm_trees = Song.new("Palm Trees", "Rai")
khaled = Artist.new("Khaleed")
palm_trees.artist = khaled
khaled.add_song(palm_trees)

date_palms = Song.new("Date Palms", "Rai")
date_palms.artist = khaled
khaled.add_song(date_palms)

wasta = Song.new("Wasta!", "Old Fashoned")
wasta.artist = khaled
khaled.add_song(wasta)
khaled.songs

khaled.songs.collect do |song|
  song.genre
end

cheb_mimi = Artist.new("Cheb Mimi") 
cheb_mimi.add_song_by_name("Mani-Mani!", "Rai-Jadid")
