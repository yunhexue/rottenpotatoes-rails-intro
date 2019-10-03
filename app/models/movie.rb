class Movie < ActiveRecord::Base
    def self.with_ratings(ratings)
        Movie.where("rating" => ratings)
    end
    def self.ratings
        Movie.pluck("rating").uniq
    end
end
