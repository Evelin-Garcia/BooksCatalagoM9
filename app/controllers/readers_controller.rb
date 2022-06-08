class ReadersController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @reader = @book.readers.build
  end

  def create
    @book = Book.find(params[:book_id])
    @reader = @book.readers.create!(reader_params)
    redirect_to @book
  end

  private

  def reader_params
      params.require(:reader).permit(:first_name, :last_name, :age, :comment)
  end  

end
