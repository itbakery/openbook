class Hotel
  include Mongoid::Document
  include Mongoid::Timestamps

  field :latitude, type: Float
  field :longitude, type: Float
  field :zoom, type: Integer
  field :gmaps,     :type => Boolean

  belongs_to :country
  belongs_to :province
  belongs_to :zone
  has_many :contacts , dependent: :destroy , autosave: true
  has_many :periods, dependent: :destroy , autosave: true
  has_many :ratesheets , dependent: :destroy , autosave: true
  has_and_belongs_to_many :roomtypes
  has_and_belongs_to_many :roomrates
  has_and_belongs_to_many :currencies
  accepts_nested_attributes_for :contacts
  accepts_nested_attributes_for :ratesheets, reject_if:  lambda { |a| a[:date].blank? }, allow_destroy:  true
  accepts_nested_attributes_for :periods, allow_destroy: true
  validates_uniqueness_of :name1
  validates_uniqueness_of :name2
  field :_id, type: String, default: -> {name1}
  field :name1, type: String
  field :name2, type: String
  field :address1, type: String
  field :address2, type: String
  field :street, type: String
  field :postal, type: String
  field :telephone, type: String
  field :fax, type: String
  field :email, type: String
  field :url, type: String
  field :reservationemail, type: String
  field :localtion, type: Array
  field :star, type: Integer
  field :isactive, type: Boolean
  field :info, type: String
  embeds_many :hotel_images, as: :imageable, class_name: "Image", cascade_callbacks: true
  accepts_nested_attributes_for :hotel_images
  mount_uploader :logo,  LogoUploader

  def show_tiny_logo(logo)
    logo.file? ? image_tag(logo.url(:tiny_thumb)) : "no image"
  end

  def latlng
    [self.latitude,self.longitude]
  end
end
