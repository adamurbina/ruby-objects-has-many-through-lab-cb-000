class Artist

    attr_accessor :name, :songs, :genres

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        #@songs << song
    end

    def songs
        @songs.all.select { |song| song.artist == self}
    end

    def genres
        @songs.map{ |song| song.genre}
    end

end
