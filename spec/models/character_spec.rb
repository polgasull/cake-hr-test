require 'rails_helper'

RSpec.describe Character, type: :model do
  describe 'associations' do
    it { should have_many(:episodes) }
  end
    
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:image) }
  end
end
