class HomeController < ApplicationController
  def index
    offset = rand(Item.count)
    @item = Item.skip(offset).first
    price_offset = rand(@item.prices.count)
    @price = @item.prices.skip(price_offset).first
    dollars = @price.value / 100
    cents = @price.value - (dollars * 100)
    @price_value = '$' + dollars.to_s + '.' + cents.to_s.rjust(2,'0')

    if @item.prices.order_by([:value, :asc]).first.value == @price.value
      @cheapest = true
      @expensive = false
    elsif @item.prices.order_by([:value, :asc]).last.value == @price.value
      @cheapest = false
      @expensive = true
    end

    @title = "One #{@item.name} costs #{@price_value} at #{@price.location}"
  end

end
