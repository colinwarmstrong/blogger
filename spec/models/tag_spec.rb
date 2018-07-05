require 'rails_helper'

describe Tag, type: :model do
  describe 'validation' do
    it {should_validate_presence_of(:name)}
  end

  describe 'relationships' do
    it {should_belong_to(:article)}
  end
end
