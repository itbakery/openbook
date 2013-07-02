class Province
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :country
  has_many :zones
  field :name, type: String
  field :description, type: String
  field :abbreviation, type: String
  field :isactive, type: Boolean
end
