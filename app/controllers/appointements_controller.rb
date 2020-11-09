class AppointementsController < ApplicationController
  def index
    @user = User.find_by(username: params[:username])
    @appointements = @user.appointements
    render json: @appointements
  end

  def create
    @user = User.find_by(username: params[:username])
    @appointement = @user.appointements.create(appointement_params)
    if @appointement.valid?
      render json: { appointement: @appointement, message: 'Appointemet created' }
    else
      render json: { error: 'All fields must be filled' }
    end
  end

  def appointement_params
    params.permit(:city, :date, :time, :car_id)
  end
end
