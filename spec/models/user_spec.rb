require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.create(name: 'Tom')

  before { user.save }
  describe 'Validation' do
    it 'accepts user if name is present' do
      expect(user).to be_valid
    end

    it 'declines user if name is absent' do
      user.name = nil
      expect(user).not_to be_valid
    end
  end
end
