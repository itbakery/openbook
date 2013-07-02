class Roomtype
  include Mongoid::Document
  include Mongoid::Timestamps
  has_and_belongs_to_many :hotels
  has_many :ratesheets
  field :name, type: String
  field :roomid, type: String
  field :description, type: String
  field :allotment, type: Integer
  field :cutoffdate, type: Integer
  field :sold, type: Integer
  field :roomfunction, type: String
  field :_id, type: String, default: -> {name}
  validates_uniqueness_of :name

end
