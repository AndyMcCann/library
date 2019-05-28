class BooksController < ApplicationController
  def new
    @book = Book.new
    @authors = Author.all
    @genres = Genre.all
  end

  def index
    @books = Book.all
  end

  def create 
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else 
      render "new"
    end
  end

  def show
    @book = Book.find(params[:id]) 
    @authors = Author.all
    @genres = Genre.all
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def update
    @book = Book.find(params[:id])
    
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end


  def edit 
    @book = Book.find(params[:id])
    @authors = Author.all
    @genres = Genre.all
    
  end 

  private
  def book_params
    params.require(:book).permit(:book_title, :author_id, :genre_id)
  end


end
