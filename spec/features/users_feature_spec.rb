require 'rails_helper'

feature 'user can sign in and out' do
  context 'user not signed in and on the homepage' do
    it 'should see a signin and signup link' do
      visit '/'
      expect(page).to have_link("Sign in")
      expect(page).to have_link("Sign up")
    end

    it 'should not see a signout link' do
      visit '/'
      expect(page).not_to have_link("Sign out")
    end
  end

  context 'user signed in and in the homepage' do
    before do
      visit '/'
      click_link 'Sign up'
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Password', with: 'pass'
      fill_in 'Password confirmation', with: 'pass'
      click_button 'Sign up'
    end

    it 'should see signout link' do
      visit '/'
      expect(page).to have_link('Sign out')
    end

  end


end
