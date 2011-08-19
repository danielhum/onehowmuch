class HomeController < ApplicationController
  def index
    offset = rand(Item.count)
    @item = Item.skip(offset).first
    price_offset = rand(@item.prices.count)
    @price = @item.prices.skip(price_offset).first
  end

end
