def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def attack_once
  sign_in_and_play
  click_button 'Attack'
  click_link 'OK'
end

def attack_OK
  click_button 'Attack'
  click_link 'OK'
end

def multiple_attack
  10.times { attack_OK }
end
