class MerchantsController < ApplicationController
  def index
    @merchants = EngineServiceFacade.new.merchants
  end

  def show
    @merchant = EngineServiceFacade.new.merchant_by_id(params[:id])
    @items = EngineServiceFacade.new.merch_items(params[:id])
  end
end