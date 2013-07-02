class Country
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :hotels
  has_many :provinces
  field :name, type: String
  field :description, type: String
  field :isactive, type: Boolean
end
