require 'rails_helper'

describe 'user sees all tags' do
  it 'they visit /tags' do
    tag_1 = Tag.create(name: 'yogurt')
    tag_2 = Tag.create(name: 'cheese')
    tag_3 = Tag.create(name: 'dairy')

    visit tags_path

    expect(page).to have_content(tag_1.name)
    expect(page).to have_content(tag_2.name)
    expect(page).to have_content(tag_3.name)
  end
end
