class Genre

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Songs.all.map {|song| song.genre == self}
    end


end
