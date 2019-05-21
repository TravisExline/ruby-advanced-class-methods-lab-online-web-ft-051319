class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    @@all << song
    song
  end

  def self.new_by_name(new_name)
    song = self.new
    song.name = new_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  def self.find_by_name(song_name)
    self.all.find { |song| song.name == song_name }
  end

  def self.find_or_create_by_name(new_song)
    self.all.each do |song_name|
      if self.find_by_name(song_name) == new_song
        song.delete
      else
        self.create_by_name(song_name)
      end
    end
  end
end
