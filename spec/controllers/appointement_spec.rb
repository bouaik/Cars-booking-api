require 'rails_helper'

RSpec.describe AppointementsController, type: :controller do
  describe 'GET #index' do
    it 'should return a 401 Unauthorized response' do
      get :index
      expect(response).to have_http_status(401)
    end
  end
end
