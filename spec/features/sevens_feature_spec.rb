require 'rails_helper'

feature 'sevens locations' do
  context 'no seven elevens have been added yet' do
    scenario 'should display a prompt to add seven elevens' do
      visit '/sevens'
      expect(page).to have_content 'No sevens have been added yet'
      expect(page).to have_link 'Add a Seven'
    end
  end

  context 'seven elevens have been added' do
    before do
      Seven.create(name: 'Reseda')
    end

    scenario 'should display seven elevens' do
        visit '/sevens'
        expect(page).to have_content 'Reseda'
        expect(page).not_to have_content 'No sevens have been added yet'
        expect(current_path).to eq '/sevens'
    end
  end
















end
