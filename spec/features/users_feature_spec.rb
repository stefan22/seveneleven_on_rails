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


end
