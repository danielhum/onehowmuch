class Price
  include Mongoid::Document
  field :value, :type => Integer
  
  embedded_in :item
  embeds_many :locations
end
