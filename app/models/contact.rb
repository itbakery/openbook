class Contact
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :hotel
  validates_uniqueness_of :name
  field :_id, type: String, default: -> {name}
  field :name, type: String
  field :position, type: String
  field :telephone, type: String
  field :email, type: String
end
