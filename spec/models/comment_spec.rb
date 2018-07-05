require 'rails_helper'

describe Comment, type: :model do
  descibe 'validation' do
    it {should belong_to(:article)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:body)}
  end
end
