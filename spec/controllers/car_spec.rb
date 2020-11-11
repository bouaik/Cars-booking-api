require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  describe 'GET #index' do
    it 'should return a 200 success response' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
