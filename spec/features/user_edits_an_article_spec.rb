require 'rails_helper'

describe 'user edits an articles' do
  describe 'user visits an article show page' do
    describe 'user clicks edit link' do
      it 'edits an article' do
        article_1 = Article.create(title: 'Test Title', body: 'Test Body')

        visit article_path(article_1)
        click_link 'Edit'

        fill_in 'article[title]', with: 'Editted Title'
        fill_in 'article[body]', with: 'Editted Body'
        click_on 'Update Article'

        expect(current_path).to eq(article_path(article_1))
        expect(page).to have_content('Editted Title')
        expect(page).to have_content('Editted Body')
        expect(page).to have_content("Article 'Editted Title' updated!")
      end
    end
  end
end
