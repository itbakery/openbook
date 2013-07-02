class Ratesheet
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :hotel
  belongs_to :roomtype
  belongs_to :roomrate
  belongs_to :period
  belongs_to :currency
  has_many :pricesheets , dependent: :delete , autosave: true
  field :name
end
