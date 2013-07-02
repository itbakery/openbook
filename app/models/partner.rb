class Partner
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :currency
  belongs_to :organization
  field :name, type: String
  field :name2, type: String
  field :description, type: String
  field :isactive, type: Boolean
  field :url, type: String
  field :address, type: String
  field :telephone, type: String
  field :email, type: String
  field :reservationmail, type: String
  field :valid_from, type: Date
  field :valid_to, type: Date
end
