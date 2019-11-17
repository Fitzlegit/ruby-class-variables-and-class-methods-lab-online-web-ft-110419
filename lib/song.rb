class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def count 
    @@count
  end
  
  def genres
    @@genres.uniq!
  end
  
  def artists
    @@artists.uniq!
  end
  
  def genre_count
    genres_hash = {}
    @@genres.each do |name| 
      if genres_hash = genres_hash.empty?
        genres_hash[name] += 1
      elsif genres_hash.include?(name)
        genres_hash[name] += 1
      end
    end
    genres_hash
  end
        
  
  def artist_count
    artist_hash = {}
    @@artists.each do |name|
      if artist_hash = artist_hash.empty?
        artist_hash[name] += 1
      elsif artist_hash.include?(name)
        artist_hash[name] += 1
      end
    end
    artist_hash
  end
  
end