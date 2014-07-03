class LendingsController < ApplicationController

  def index
    @lendings = Lending.all
  end

  def new
    @lending = Lending.new
  end

  def create
    Lending.create lending_params

    redirect_to root_path
  end

  private
  def lending_params
    params.require(:lending).require(:borrow_date, :return_date, :book, :user)
  end
end
