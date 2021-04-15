require 'rails_helper'

RSpec.feature 'Sessions', type: :feature do
  let(:user_one) { User.new(name: 'carlos') }

  def login_user(user)
    visit '/login'
    fill_in 'Name', with: user.name
    click_button 'Login'
  end

  context 'User Login' do
    scenario 'successfully Login' do
      user_one.save
      login_user(user_one)
      expect(page).to have_content 'You have successfully logged in!'
    end

    scenario 'Unable to Login' do
      login_user(user_one)
      expect(page).to have_content 'User does not exist!'
    end
  end
end
