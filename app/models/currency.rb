class Currency
  include Mongoid::Document
  has_many :organizations
  has_many :partners
  has_many :invoices
  has_many :ratesheets
  has_and_belongs_to_many :hotels
  field :name, type: String
  field :description, type: String
  field :code, type: String
  field :rate, type: BigDecimal
  field :icon, type: String
  def fullname
    "#{name}(#{code} -rate #{rate}/@us)"
  end
end
