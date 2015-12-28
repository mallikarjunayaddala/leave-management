class HomeController < ApplicationController
  def index

    if user_signed_in?
       if current_user.aproval == true
      
      redirect_to leaves_path(current_user)
       else
        redirect_to home_path(current_user)
       end
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

  def about
  end
end
