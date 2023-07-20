class EngineServiceFacade
  def merchants
    json = service.all_merchants
    merchants = json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def service
    EngineService.new
  end

end


