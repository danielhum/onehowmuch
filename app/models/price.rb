class Price
  include Mongoid::Document
  field :value, :type => Integer
  field :location

  embedded_in :item

  validates_presence_of :value
  validates_presence_of :location
end
