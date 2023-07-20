require 'rails_helper'

RSpec.describe Item do
  it 'has item attributes' do
    item_data = { id: 1, attributes: { name: "crabby patty" } }
    item = Item.new(item_data)

    expect(item).to be_a(Item)
    expect(item.name).to be_a(String)
    expect(item.name).to eq("crabby patty")
    expect(item.id).to be_a(Integer)
    expect(item.id).to eq(1)
  end
end