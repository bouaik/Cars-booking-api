class AppointementsController < ApplicationController
    skip_before_action :authorized
  
    def index
      @appointements = Appointement.all
      render json: @appointements
    end
  
    def create
      @appointement = Appointement.create(appointement_params)
      if @appointement.valid?
        render json: @appointement, status: :created
      else
        render json: @appointement.errors, status: :unprocessable_entity
      end
    end
  
    def appointement_params
      params.permit(:city, :date, :time, :user_id, :car_id)
    end
  end
  