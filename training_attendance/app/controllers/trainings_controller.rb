class TrainingsController < ApplicationController

def index
  @trainings = Training.all
end

def show
  @training = Training.find(params[:id])
end

def new
  @training = Training.new
end

def create

    @training = Training.new(params.require(:training).permit(:date, :location))
    if @training.save
    redirect_to @training
    else render 'new'
    end
end
end
