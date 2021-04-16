# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.feature 'Articles', type: :feature do
  let(:user) { User.find_by(name: 'Jaim') }
  let(:article) do
    Article.new(author_id: user.id, title: 'Maki furai',
                text: 'Maki', image: 'https://i.pnimg.com/image.jpg', all_categories: 'japanese, peruvian, main, asian')
  end

  def create_article(article)
    visit new_article_path
    fill_in 'Title', with: article.title
    fill_in 'Content', with: article.text
    fill_in 'Categories', with: article.all_categories
    fill_in 'Image', with: article.image
    click_button 'Submit recipe!'
  end

  def login_user(user)
    visit '/login'
    fill_in 'Name', with: user.name
    click_button 'Login'
  end

  context 'Create article' do
    scenario 'Successfully Create article' do
      login_user(user)
      create_article(article)
      expect(page).to have_content 'Recipe saved!'
    end

    scenario 'Missing title' do
      article.title = ''
      login_user(user)
      create_article(article)
      expect(page).to have_content "can't be blank"
    end

    scenario 'Missing text' do
      article.text = ''
      login_user(user)
      create_article(article)
      expect(page).to have_content "can't be blank"
    end

    scenario 'Missing categories' do
      article.all_categories = ''
      login_user(user)
      create_article(article)
      expect(page).to have_content "can't be blank"
    end

    scenario 'Missing image' do
      article.image = ''
      login_user(user)
      create_article(article)
      expect(page).to have_content "can't be blank"
    end
  end
end
# rubocop:enable Metrics/BlockLength
