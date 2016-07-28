class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@artist_hash = {}
  @@genres = []
  @@genre_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.each do |song_gen1|
      @@genre_hash[song_gen1] = 0
    end
    @@genres.each do |song_gen2|
      @@genre_hash[song_gen2] += 1
    end
    return @@genre_hash
  end

  def self.artist_count
    @@artists.uniq.each do |song_art1|
      @@artist_hash[song_art1] = 0
    end
    @@artists.each do |song_art2|
      @@artist_hash[song_art2] += 1
    end
    return @@artist_hash
  end

end
