require 'rails_helper'

describe 'user wants to delete a tag' do
  describe 'clicks delete on a tag show page' do
    it 'the tag is deleted' do
      tag_1 = Tag.create(name: 'test_tag')

      visit tag_path(tag_1)
      click_on('Delete')

      expect(current_path).to eq(tags_path)
      expect(page).to_not have_content(tag_1.name)
    end
  end
end
