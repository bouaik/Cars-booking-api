class AppointementsController < ApplicationController
    # skip_before_action :authorized
    before_action :logged_in_user, only: [:index]
  
    def index
      @appointements = @user.appointements
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
  