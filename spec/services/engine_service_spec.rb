require "rails_helper"

RSpec.describe EngineService do
  describe "#all_merchants" do
    it "establishes a connection to retreive all merchants" do
      merchants = EngineService.new.all_merchants

      expect(merchants).to be_a(Hash)
      expect(merchants).to have_key(:data)
      expect(merchants[:data]).to be_an(Array)

      merchant = merchants[:data][0]
      expect(merchant).to be_a(Hash)
      expect(merchant).to have_key(:id)
      expect(merchant[:id]).to be_a(String)
      expect(merchant[:id]).to eq("1")

      expect(merchant[:type]).to eq("merchant")

      expect(merchant).to have_key(:attributes)
      expect(merchant[:attributes]).to have_key(:name)
      expect(merchant[:attributes][:name]).to be_a(String)
      expect(merchant[:attributes][:name]).to eq("Schroeder-Jerde")
    end
  end
end