require 'rails_helper'

feature 'reviews' do
  before { Seven.create(name:'Reseda')}
  scenario 'allows users to leave a review using review form' do
    visit '/sevens'
    click_link 'Review Reseda'
    fill_in 'Thoughts', with: 'great'
    select '3', from 'Rating'
    click_button 'Leave Review'
    expect(page).to have_content 'great'
    expect(current_path).to eq '/sevens'
  end
end
