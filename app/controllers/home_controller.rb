class HomeController < ApplicationController
  skip_before_action :authorized
  def index
    render json: {hello: "Hello world!"}
  end
end
