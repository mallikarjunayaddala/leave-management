class LeavesController < ApplicationController
  
before_action :authenticate_user!
  def index
   @leaves = Leave.all
  end
  
  def new
    @leave = current_user.leaves.build
  end

  def show
     @leave = Leave.find(params[:id])
  end

  def create
     @leave = current_user.leaves.build(user_params)
     @leave.from_date = Date.strptime(user_params[:from_date], "%m/%d/%Y")
     @leave.to_date = Date.strptime(user_params[:to_date], "%m/%d/%Y") 
     if @leave.save
       redirect_to leave_path(@leave)
     else
       render 'new'
     end
  end

  def update
  end

  def destroy
  end

  
private
    def user_params
      
      params.require(:leave).permit(:from_date, :to_date, :reason, :type_of_leave, :no_of_days)                                       
    end
end
