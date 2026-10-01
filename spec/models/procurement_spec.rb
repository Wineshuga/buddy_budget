require 'rails_helper'

RSpec.describe Procurement, type: :model do
  let(:user) { User.create(name: 'Tom', email: 'tom@gmail.com', password: 'password') }
  let(:cat) { Category.create(name: 'Category', author_id: user.id) }

  describe 'Validation' do
    let(:pro) do
      Procurement.create(
        name: 'transaction',
        amount: 10,
        date: Date.new(2022, 11, 10),
        author_id: user.id,
        category_ids: [cat.id]
      )
    end

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

    it 'checks if category id is present' do
      pro.category_ids = nil
      expect(pro).not_to be_valid
    end
  end
end
