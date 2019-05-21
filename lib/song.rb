class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist)
    @name = name
    @artist_name = artist
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create

  end

end
