describe "user deletes an article" do
  describe "they link from the show page" do
    it "displays all articles withouted the deleted entry" do
      article_1 = Article.create(title: 'Deleted Title', body: 'Deleted Body')
      article_2 = Article.create(title: 'Test Title', body: 'Test Body')

      visit article_path(article_1)
      click_link 'Delete'

      expect(current_path).to eq('/articles')
      expect(page).to have_content(article_2.title)
      expect(page).to_not have_content(article_1.title)
      expect(page).to have_content("Article deleted!")
    end
  end
end
