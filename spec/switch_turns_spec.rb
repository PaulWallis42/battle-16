require 'spec_helper'

feature 'Taking turns' do

  scenario 'seeing the current turn' do
    sign_in_and_play
    expect(page).to have_content "Dave's Turn"
  end

  scenario 'As player 2 I want a to have a turn' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content 'Mittens\'s Turn'
  end

end
