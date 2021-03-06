class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        my_hash = {}
        @@genres.each do |genre|
            if my_hash[genre]
                my_hash[genre] += 1
            else
                my_hash[genre] = 1
            end
        end
        my_hash
    end

    def self.artist_count
        my_hash = {}
        @@artists.each do |a|
            if my_hash[a]
                my_hash[a] += 1
            else
                my_hash[a] = 1
            end
        end
        my_hash
    end


end
