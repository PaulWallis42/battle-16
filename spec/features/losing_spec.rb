require 'spec_helper'

feature 'Losing a game'do

  scenario 'a player can lose a game' do
    attack_once
    multiple_attack
    expect(page).to have_content 'Mittens Loses'
  end
end
