require 'rails_helper'

RSpec.describe Appointement, type: :model do
  describe 'Association' do
    it { should belong_to(:car) }
    it { should belong_to(:user) }
  end
end
