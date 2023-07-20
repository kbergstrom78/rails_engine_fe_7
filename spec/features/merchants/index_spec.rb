require 'rails_helper'

RSpec.describe 'Merchants Index Page', type: :feature do
  it 'shows a list of merchants by name' do
    merchant = EngineServiceFacade.new.merchants.first
    visit merchants_path

    expect(page).to have_content('All Merchants')
    expect(page).to have_content(merchant.name)
  end

  it 'links to the merchant show page' do
    merchant = EngineServiceFacade.new.merchants.first

    visit merchants_path

    expect(page).to have_link(merchant.name)

    click_link merchant.name
    
    expect(current_path).to eq(merchant_path(merchant.id))
  end
end