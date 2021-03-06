require 'spec_helper'

feature 'Show hit points' do

  scenario 'I want to see my opponents hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end

  scenario 'I want to see my own hit points' do
    sign_in_and_play
    expect(page).to have_content 'Dave: 60HP'
  end

end
