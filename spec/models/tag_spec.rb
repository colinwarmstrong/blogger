require 'rails_helper'

describe Tag, type: :model do
  describe 'validation' do
    it {should validate_presence_of(:name)}
  end

  describe 'relationships' do
    it {should have_many(:articles)}
  end
end
