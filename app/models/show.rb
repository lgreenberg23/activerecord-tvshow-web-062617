class Show < ActiveRecord::Base


	def self.highest_rating
		rating = Show.maximum(:rating)
	end

	def self.most_popular_show
		rating = self.highest_rating
		show = Show.find_by("rating = ?", rating)
	end

	def self.lowest_rating
		rating = Show.minimum(:rating)
	end

	def self.least_popular_show
		rating = self.lowest_rating
		show = Show.find_by("rating = ?", rating)
	end

	def self.ratings_sum
		Show.sum(:rating)
	end

	def self.popular_shows
		array = Show.where("rating >?", 5)
	end

	def self.shows_by_alphabetical_order
		array = Show.order(:name)
	end


end
