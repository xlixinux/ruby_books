module BooksHelper
	def format_price(book)
		if book.price > 20
			content_tag(:strong, "#{book.price} is Expensive!")
		else
			number_to_currency(book.price)
		end
	end
end
