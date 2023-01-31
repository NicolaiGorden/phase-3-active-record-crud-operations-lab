class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end
#create
    def self.create_with_title(title)
        Movie.find_or_create_by(title: title)
    end

#read
    def self.first_movie()
        Movie.first
    end

    def self.last_movie()
        Movie.last
    end

    def self.movie_count()
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        Movie.find_by attributes
    end

    def self.find_movies_after_2002() 
        Movie.where("release_date > ?", 2002)
    end

#update
    def update_with_attributes(update)
        self.update(update)
    end

    def self.update_all_titles(update)
        Movie.update_all(title: update)
    end

#delete
    def self.delete_by_id(id)
        Movie.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

end