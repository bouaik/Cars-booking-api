class AppointementsController < ApplicationController
    skip_before_action :authorized
  
    def index
      @appointements = Appointement.all
      render json: @appointements
    end
  
    def create
      @user = User.find_by(username: params[:username])
      @appointement = @user.appointements.create(appointement_params)
      if @appointement.valid?
        render json: @appointement, status: :created
      else
        render json: @appointement.errors, status: :unprocessable_entity
      end
    end
  
    def appointement_params
      params.permit(:city, :date, :time, :car_id)
    end
  end
  