class HomeController < ApplicationController
  def index
    @item = Item.last
    @price = @item.prices.last
  end

end
