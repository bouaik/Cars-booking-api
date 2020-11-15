require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #auto_login' do
    it 'should return a 401 Unauthorized response' do
      get :auto_login
      expect(response).to have_http_status(401)
    end
  end
end
