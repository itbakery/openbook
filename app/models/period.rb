class Period
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :hotel
  has_many :ratesheets
  field :name, type: String
  field :valid_from, type: Date
  field :valid_to, type: Date
  field :isactive, type: Boolean
  field :_id, type: String, default: -> {name}
  validates_uniqueness_of :name
  def fullname
    "<#{name} from #{valid_from.strftime('%a, %b %d, %Y')} to #{valid_to.strftime('%a, %b %d, %Y')}>"
  end
end
