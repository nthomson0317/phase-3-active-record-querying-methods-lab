require 'pry'
class Show < ActiveRecord::Base


def self.highest_rating
  rating = self.maximum(:rating)
  rating
end

def self.most_popular_show
    sorted_shows = Show.order(rating: :desc)
    sorted_shows.first
end

def self.lowest_rating
    shows = Show.order(rating: :desc)
    shows.last.rating

end

def self.least_popular_show
    shows = Show.order(rating: :desc)
    shows.last
end

def self.ratings_sum
    Show.all.collect{|movie| movie.rating}.sum
    
end

def self.popular_shows
    show_high_ratings = Show.all.select{|show|show.rating > 5 }
end

def self.shows_by_alphabetical_order
    Show.all.sort_by{|show| show.name}
end




end