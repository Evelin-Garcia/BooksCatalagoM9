class ChaptersController < ApplicationController
    def create
        @book = Book.find(params[:book_id])
        @chapter = @book.chapters.create(chapter_params)
        redirect_to book_path(@book)
    end

    private
    def chapter_params
        params.require(:chapter).permit(:chapter_number, :title, :summary)
    end
end
