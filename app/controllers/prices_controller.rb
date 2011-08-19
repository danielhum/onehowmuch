class PricesController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @price = @item.prices.create!(params[:price])
    redirect_to @item, :notice => "Price added."
  end
end
