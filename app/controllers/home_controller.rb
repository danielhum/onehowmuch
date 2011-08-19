class HomeController < ApplicationController
  def index
    offset = rand(Item.count)
    @item = Item.skip(offset).first
    price_offset = rand(@item.prices.count)
    @price = @item.prices.skip(price_offset).first

    if @item.prices.order_by([:value, :asc]).first.value == @price.value
      @cheapest = true
      @expensive = false
    elsif @item.prices.order_by([:value, :asc]).last.value == @price.value
      @cheapest = false
      @expensive = true
    end
  end

end
