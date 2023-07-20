class EngineServiceFacade
  def merchants
    json = service.all_merchants
    merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merch_items(id)
    json = service.merchants_items(id)
    items = json[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def merchant_by_id(id)
    json = service.merchant_details(id)
    Merchant.new(json[:data])
  end

  def service
    EngineService.new
  end

end


