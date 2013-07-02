class Invoice
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :customer
  belongs_to :currency
  accepts_nested_attributes_for :customer, allow_destroy: true, :reject_if => lambda { |a| a[:firstname].blank? }
  has_many :invoicelines
  accepts_nested_attributes_for :invoicelines, allow_destroy: true , :reject_if => lambda { |a| a[:total].blank? }

  field :prefix, type: String
  field :invoice_no, type: String
  field :order_reference, type: String
  field :order_date, type: Date
  field :description, type: String
  field :subtotal, type: BigDecimal
  field :discount, type: BigDecimal
  field :tax, type: BigDecimal
  field :grandtotal, type: BigDecimal
  field :status, type: String
  field :note, type: String

  #add field name customer_firstname
  def customer_fullname
    firstname = customer.try(:firstname)
    lastname  = customer.try(:lastname)
    "#{lastname},#{firstname}"
  end

  def customer_fullname=(fullname)
    lastname = fullname.split(',')[0]
    firstname = fullname.split(',')[1]
    self.customer = Customer.find_or_create_by(firstname: firstname) if firstname.present?
    self.customer[:lastname] = lastname
  end
end
