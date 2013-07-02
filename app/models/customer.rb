class Customer
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :invoices
  field :firstname, type: String
  field :lastname, type: String
  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :country, type: String
  field :phone, type: String
  field :mobile, type: String
  field :email, type: String
  def self.list
     all.map { |c| "#{c.lastname},#{c.firstname}" }
  end
end
