class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Successfully created new book in you library"
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update((book_params))
      flash[:success] = "Successfully update"
      redirect_to books_path
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:success] = "Successfully deleted"
    redirect_to books_path
  end

private

  def book_params
    params.require(:book).permit(:title, :authors, :publisher, :publishedDate, :genre, :description)
  end
end
