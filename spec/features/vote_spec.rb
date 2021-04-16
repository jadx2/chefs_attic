require 'rails_helper'

RSpec.feature 'Votes', type: :feature do
  let(:user) { User.find_by(name: 'Jaim') }
  let(:article) do
    Article.create(author_id: user.id, title: 'Maki', text: 'Maki', image: 'https://i.pnimg.com/img.jpg',
                   all_categories: 'japanese, peruvian, main, asian')
  end

  def login_user(user)
    visit '/login'
    fill_in 'Name', with: user.name
    click_button 'Login'
  end

  context 'Vote' do
    scenario 'Logged in user can vote' do
      login_user(user)
      visit article_path(article.id)
      click_on 'Like'
      expect(page).to have_content 'Unlike'
    end

    scenario 'Not logged in user cannot vote' do
      visit article_path(article.id)
      click_on 'Like'
      expect(page).to have_content 'You need to be logged in to vote!'
    end
  end
end
