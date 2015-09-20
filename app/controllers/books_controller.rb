class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to book_path(@book)
	end

private 
	def book_params
		book_params = params.require(:book).
									  permit(:title, :description, :rating, :price, :released_on)
	end
end
