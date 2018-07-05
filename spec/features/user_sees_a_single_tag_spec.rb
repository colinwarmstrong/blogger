require 'rails_helper'

describe 'user sees one tag' do
  it 'clicking from an article show to a tag show displays the tag name' do
    article = Article.create(title: "New Title", body: "New Body")
    tag = article.tags.create(name: "Name")

    visit article_path(article)
    click_link(tag.name)

    expect(page).to have_content(tag.name)
  end
end
