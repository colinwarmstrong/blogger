require 'rails_helper'

describe Comment, type: :model do
  describe 'validation' do
    it {should belong_to(:article)}
    it {should validate_presence_of(:author_name)}
    it {should validate_presence_of(:body)}
  end
end
