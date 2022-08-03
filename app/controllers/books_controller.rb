class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books.to_json
  end

  def show
    book = Book.find_by(id: params[:id])
    render json: book.to_json
  end

  def update
    book = Book.find_by(id: params[:id])
    book.title = params[:title] || book.title
    book.year = params[:year] || book.year
    book.isbn = params[:isbn] || book.isbn
    book.save
    render json: book.to_json
  end
end
