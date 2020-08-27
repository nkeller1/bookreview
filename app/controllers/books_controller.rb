class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new; end

  def create
    book = Book.create(book_params)
    redirect_to '/books'
  end

  private
    def book_params
      params.permit(:title, :published, :pages, :author)
    end
end
