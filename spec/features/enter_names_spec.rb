require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Kanye'
    fill_in :player_2_name, with: 'Kittens'
    click_button 'Submit'
    expect(page).to have_content 'Kanye vs. Kittens'
  end
end

feature 'Show player 2 points' do
  scenario 'displaying opponent points' do
    visit('/')
    fill_in :player_1_name, with: 'Kanye'
    fill_in :player_2_name, with: 'Kittens'
    click_button 'Submit'
    expect(page).to have_content 'Kittens has 100 points'
    end
  end
