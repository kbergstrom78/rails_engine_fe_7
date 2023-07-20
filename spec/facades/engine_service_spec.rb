require 'rails_helper'

RSpec.describe EngineServiceFacade do
  describe "creates merchant facade" do
    it "has merchants with" do
      merchants = EngineServiceFacade.new.merchants

      expect(merchants.count).to eq(100)
      expect(merchants).to be_an(Array)

      merchants.each do |merchant|
        expect(merchant).to be_a(Merchant)
        expect(merchant.id).to be_a(String)
        expect(merchant.name).to be_a(String)
      end
    end
  end
end