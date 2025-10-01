class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to @book
    else
      flash.now[:alert] = "Error: Could not create book."
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to @book
    else
      flash.now[:alert] = "Error: Could not update book."
      render :edit
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book was successfully deleted."
    redirect_to books_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :published_on)
  end
end
