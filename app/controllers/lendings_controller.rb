class LendingsController < ApplicationController

  def index
    @lendings = Lending.all
  end

  def borrow
    Lending.create user: current_user, book: Book.find(params[:book_id]), borrow_date: Date.current

    redirect_to books_path
  end

  def return
    
    lending = current_user.lendings.where(book_id: params[:book_id]).first

    lending.return_date = Date.current

    if lending.valid?
      lending.save

      redirect_to books_path, notice: 'Book returned'
    else
      redirect_to books_path, alert: 'Failed to return the book'
    end
  end

  private
  def lending_params
    params.require(:lending).require(:borrow_date, :return_date, :book, :user)
  end
end
