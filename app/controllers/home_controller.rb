class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to home_path(current_user)
    end
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def delete
  end
end
