class Movie
	attr_accessor :name, :red, :green, :blue
	def initialize(name, date, study, category, votes)
		@name = name
		@date = date 
		@study = study
		@category = category
		@votes = votes
	end


end