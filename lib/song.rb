require 'pry'


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
   
  def self.count 
    @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    genres_hash = {}
    @@genres.each do |name| 
      if !genres_hash.include?(name)
        genres_hash[name] = 1
      elsif genres_hash.include?(name)
        genres_hash[name] += 1
      end
    end
    genres_hash
  end
        
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |name|
      if !artist_hash.include?(name)
        artist_hash[name] = 1
      elsif artist_hash.include?(name)
        artist_hash[name] += 1
      end
    end
    artist_hash
  end
  
end