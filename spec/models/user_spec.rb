
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Valiations' do
    it 'expect user to be valid' do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end
  end

  describe 'Association' do

    it { should have_many(:appointements) }
    
    it {
      should have_many(:cars).through(:appointements)
    }
  end
end