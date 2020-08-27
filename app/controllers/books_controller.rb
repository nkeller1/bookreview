class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new; end

  def create
    require "pry"; binding.pry
  end
end
