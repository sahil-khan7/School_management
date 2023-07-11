class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end


  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end
  private
    def book_params
      params.require(:book).permit(:book_name, :author_name)
    end
end
