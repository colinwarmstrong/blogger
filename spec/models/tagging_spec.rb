require 'rails_helper'

describe Tagging, type: :model do
  describe 'validations' do
  end

  describe 'relationships' do
    it {should belong_to(:tag)}
  end
end
