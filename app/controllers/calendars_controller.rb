class CalendarsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def new 
        calendar = Calendar.new 
        render json: calendar
    end 
    
    def create 
        calendar = Calendar.create(calendar_params)
        render json: calendar
    end 

    def index 
        calendars = Calendar.all 
        render json: calendars
    end 

    def show 
        calendar = Calendar.find(params[:id]) 
        render json: calendar
    end 

    def destroy 
        calendar = Calendar.find(params[:id])
        calendar.days.destroy_all
        calendar.destroy  
    end 

    private

    def calendar_params
        params.require(:calendar).permit(:name, :user_id)
    end 


end
