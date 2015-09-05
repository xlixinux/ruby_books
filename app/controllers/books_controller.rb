class BooksController < ApplicationController
	def index
		@books = ["Programming Ruby",
						  "Well-Grounded Rubyist",
						  "Ruby for Rails",
						  "The Ruby Programming Language"]
	end
end
