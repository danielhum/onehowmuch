class Item
  include Mongoid::Document
  field :name, :type => String

  embeds_many :prices
end
