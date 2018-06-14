class Genre

    attr_accessor :name, :songs, :artists

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
    end

    def songs
        Song.all.map {|song| song.genre == self}
    end

    def artists
        Song.all.map{|song| song.artist == self}
    end


end
