require 'rails_helper'

RSpec.describe Procurement, type: :model do
  let(:user) {User.create(name: 'Tom')}

  describe 'Validation' do  
    let(:pro) {Procurement.create(name: 'transaction', amount: 10, author_id: user.id)}

    it 'checks if name is present' do
      expect(pro).to be_valid 
    end

    it 'checks if name is absent' do
      pro.name = nil
      expect(pro).not_to be_valid 
    end
    
    it 'checks if amount is not an integer' do
      pro.amount = 'ten'
      expect(pro).not_to be_valid
    end
  end
end