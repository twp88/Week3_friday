require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Kanye vs. Kittens'
  end
end

feature 'Show player 2 points' do
  scenario 'displaying opponent points' do
    sign_in_and_play
    expect(page).to have_content 'Kittens has 100 points'
    end
  end

feature 'Player1 attacks Player2' do
  scenario 'Player2 attacks Player1' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Kanye has attacked Kittens!'
  end
end
