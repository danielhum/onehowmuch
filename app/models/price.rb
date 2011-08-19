class Price
  include Mongoid::Document
  field :value, :type => Integer

  embedded_in :item
  embeds_many :locations

  validates_presence_of :value
end
