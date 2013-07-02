class Organization
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :client
  has_and_belongs_to_many :currency
  has_many :partners
  field :name, type: String
  field :address1, type: String
  field :address2, type: String
  field :telephone, type: String
  field :fax, type: String
  field :contact, type: String
  field :valid_from, type: Date
  field :valid_to, type: Date
  field :isactive, type: Boolean
end
