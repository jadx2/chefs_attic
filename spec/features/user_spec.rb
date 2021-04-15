require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  context 'Create new user' do
    scenario 'Successfully create new user' do
      visit '/users/new'
      fill_in 'Name', with: 'carlos'
      click_button 'Register'
      expect(page).to have_current_path(root_path)
    end
  end
end
