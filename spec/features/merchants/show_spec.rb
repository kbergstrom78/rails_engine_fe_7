require 'rails_helper'

RSpec.describe 'Merchants Show Page', type: :feature do
  describe 'as a user, when I click on a merchants link' do
    it 'routes them to the merchants show page' do
      merchant = EngineServiceFacade.new.merchants.first
      merchant_id = merchant.id.to_i

      visit merchants_path

      click_on "#{merchant.name}"

      expect(current_path).to eq(merchant_path(merchant_id))
    end
  end

  describe 'as a visitor on a merchants show page' do
    it 'shows the merchant name' do
      merchant = EngineServiceFacade.new.merchant_by_id(1)

      visit merchant_path(1)

      expect(page).to have_content(merchant.name)
    end

    it 'shows a list of items for that merchant' do
      merchant = EngineServiceFacade.new.merchant_by_id(1)
      item = EngineServiceFacade.new.merch_items(1).first

      visit merchant_path(1)

      expect(page).to have_content(item.name)
    end
  end
end