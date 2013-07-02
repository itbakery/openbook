class Invoiceline
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :invoice
  field :lineno, type: Integer
  field :product, type: String
  field :quantity, type: Integer
  field :unitprice, type: BigDecimal
  field :total, type: BigDecimal
end
