class Item
  include Mongoid::Document
  field :name, :type => String
  
  embeds_many :prices

  validates_presence_of :name
  key :name
end
