require 'rails_helper'

RSpec.describe Machine, type: :model do
    it 'Adding wrong machine' do
      visit  new_machine_path

      click_button 'New Machine'

      expect(page).to have_content("Name can't be blank")
      expect(Machine.count).to eq(0)
      
  end
end
