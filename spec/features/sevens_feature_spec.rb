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

  context 'creating seven elevens' do
    scenario 'prompts user to fill out form then displays a new seven eleven' do
        visit '/sevens'
        click_link 'Add a Seven'
        fill_in 'Name', with: 'Reseda'
        click_button 'Create Seven'
        expect(page).to have_content 'Reseda'
        expect(current_path).to eq '/sevens'
    end
  end

  context 'show seven elevens' do
    let!(:reseda){Seven.create name: 'Reseda'}

    scenario 'displays seven eleven page' do
        visit '/sevens'
        click_link 'Reseda'
        expect(page).to have_content 'Reseda'
        expect(current_path).to eq "/sevens/#{reseda.id}"
    end
  end

  context 'update seven elevens' do
    before { Seven.create(name:'Reseda')}

    scenario 'lets user edit seven eleven' do
      visit '/sevens'
      click_link 'Edit Reseda'
      fill_in 'Name', with: 'Risotto'
      click_button 'Update Seven'
      expect(page).to have_content 'Risotto'
      expect(current_path).to eq '/sevens'
    end
  end

  context 'delete seven elevens' do
    before { Seven.create(name:'Reseda')}

    scenario 'lets users delete seven elevens' do
      visit 'sevens'
      click_link 'Delete Reseda'
      expect(page).not_to have_content 'Reseda'
      expect(page).to have_content 'Seven deleted successfully'
    end
  end















end
