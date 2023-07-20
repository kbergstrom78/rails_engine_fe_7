require 'rails_helper'

RSpec.describe Merchant do
  it 'has merchant attributes' do
    merchant = Merchant.new({id: 1, name: "Turing School"})

    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to be_a(String)
    expect(merchant.name).to eq("Turing School")
    expect(merchant.id).to be_a(Integer)
    expect(merchant.id).to eq(1)
  end
end