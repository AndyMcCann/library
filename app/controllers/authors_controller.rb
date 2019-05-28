class AuthorsController < ApplicationController
  def new
  end

  def show 
    @author = Author.find(params[:id])
    @books = @author.books
    @genres = Genre.all
  end

  def edit 
    @author = Author.find(params[:id])
  end 

  def details
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
      
    end
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
        redirect_to @author
    else
      render 'edit'

    end
  end


  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end

  #What is the scope of this declaration. Does this mean that the db command Author.all 
  #gets attributed to @authors instance var? It will be on index page but not new page?
  def index
    @authors = Author.all
  end

  private
    def author_params
      params.require(:author).permit(:author_name, :details)
    end
  
end
