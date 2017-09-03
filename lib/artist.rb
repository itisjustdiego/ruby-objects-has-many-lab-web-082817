class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    # @@song_count
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
    name.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    name = Song.new(song_name)
    @songs << name
    name.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def artist_name

  end

end
