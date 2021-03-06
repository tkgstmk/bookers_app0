class BooksController < ApplicationController
# 一覧画面
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books'
  end

  def show
    @book = Book.find(params[:id])
  end

  # 編集の画面
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to @book
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end









