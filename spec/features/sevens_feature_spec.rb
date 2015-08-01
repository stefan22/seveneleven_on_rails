require 'rails_helper'

feature 'sevens locations' do
  context 'no seven elevens have been added yet' do
    scenario 'should display a prompt to add seven elevens' do
      visit '/sevens'
      expect(page).to have_content 'No sevens have been added yet'
      expect(page).to have_link 'Add a Seven'
    end
  end
















end
