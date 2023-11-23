require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Tom') }

  describe 'validations' do
    let(:cat) { Category.create(name: 'Category', icon: 'https://img.png', author_id: user.id) }

    it 'checks if category is valid' do
      expect(cat).to be_valid
    end

    it 'checks if name is absent' do
      cat.name = nil
      expect(cat).not_to be_valid
    end
  end
end
