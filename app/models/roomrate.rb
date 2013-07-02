class Roomrate
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :ratesheets
  field :name, type: String
  field :occupancy, type: Integer
  field :description, type: String
  field :_id, type: String, default: -> {name}
  validates_uniqueness_of :name
  has_and_belongs_to_many :hotels
end
