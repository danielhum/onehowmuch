class Location
  include Mongoid::Document
  field :name, :type => String

  embedded_in :price

  validate :name, :presence => true
end
