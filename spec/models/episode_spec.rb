require 'rails_helper'

RSpec.describe Episode, type: :model do
  describe 'associations' do
    it { should belong_to(:character) }
  end
    
  describe 'validations' do
    it { should validate_presence_of(:number) }
  end
end
