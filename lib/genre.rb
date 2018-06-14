class Genre

    attr_accessor :name, :songs, :artists

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
    end

    def songs
        Song.all.each {|song| song.genre == self}
    end

    def artists
        Song.all.each{|song| song.artist == self}
    end


end
