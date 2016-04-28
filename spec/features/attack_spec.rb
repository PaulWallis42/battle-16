require 'spec_helper'

feature 'Attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'As player 1 I want an attack to reduce oppenents HP' do
    attack_once
    expect(page).not_to have_content 'Mittens 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario 'I want player 2 to be able to attack me' do
    attack_once
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content 'Dave: 50HP'
  end

  scenario 'I want notification that player 2 has attacked me' do
    attack_once
    click_button 'Attack'
    expect(page).not_to have_content 'Dave attacked Mittens'
    expect(page).to have_content 'Mittens attacked Dave'
  end

end
