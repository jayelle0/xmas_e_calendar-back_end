class DaysController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def new 
        day = Day.new 
        render json: day
    end 
    
    def create 
        day = Day.create(day_params)
        render json: day
    end 

    def index 
        days = Day.all 
        render json: days
    end
    def edit
        day = Day.find(params[:id])
        render json: day 
    end 
    def update
        day = Day.find(params[:id])
        day.update(day_params)
        render json: day
    end

    def show 
        day = Day.find(params[:id]) 
        render json: day
    end 

    def destroy 
        day = Day.find(params[:id]) 
        day.destroy
    end 

    private

    def day_params
        params.require(:day).permit(:content, :image_video, :date, :calendar_id)
    end 



end
