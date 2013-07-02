class Client
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :organizations
  field :name, type: String
  field :description, type: String
  field :isactive, type: Boolean

end
