require 'spec_helper'

feature 'Attacks opponent' do
  scenario 'and confirms attack and reduces players hp 10' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Kanye has attacked Kittens!"
    expect(page).to have_content "Kittens's hp is now 90"
  end
end
