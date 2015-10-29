class LeavesController < ApplicationController
  

  def index
   @leaves = Leave.all
  end
  
  def new
    @leave = Leave.new
  end

  def show
     @leave = Leave.find(params[:id])
  end

  def create
     
     @leave = Leave.new(user_params)
     @leave.from_date = @leave.from_date.strftime("%m-%d-%Y") 
     @leave.to_date = @leave.to_date.strftime("%m-%d-%Y") 
     if @leave.save
       redirect_to leafe_path(@leave)
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
