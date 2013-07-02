class Pricesheet
  include Mongoid::Document
  belongs_to :ratesheet
  field :date, type: Date
  field :day, type: String
  field :minstay, type: Integer
  field :message, type: String
  field :price, type: BigDecimal
  field :isactive, type: Boolean
end
