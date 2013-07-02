class Zone
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :province
  belongs_to :country
  has_many :hotels
  field :name, type: String
  field :description, type: String
  field :isactive, type: Boolean
end
