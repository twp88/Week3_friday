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

feature "lets player switch turns" do
  scenario 'lets players switch turns' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Back'
    expect(page).to have_content "Kittens has 90 points"
  end
end
