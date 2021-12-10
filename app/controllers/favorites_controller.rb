class FavoritesController < ApplicationController

	def create
    user = current_user
    @book = Book.find(params[:book_id])
  	favorite = user.favorites.new(book_id: @book.id)
  	favorite.save
  end

  def destroy
    user = current_user
    @book = Book.find(params[:book_id])
    favorite = user.favorites.find_by(book_id: @book.id)
    favorite.delete
  end

   private
    def set_favorite
        @book = Book.find(params[:book_id])
    end
end