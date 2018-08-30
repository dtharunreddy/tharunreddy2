class BooksController < ApplicationController
  def index
     @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to users_path
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book = @book.update(book_params)
    redirect_to users_path
  end

  def destroy
  end

   def book_params
    params.require(:book).permit(:name,:description)
  end  
end
