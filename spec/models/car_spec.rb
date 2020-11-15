require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'Association' do
    it { should have_many(:appointements) }
  end
end
