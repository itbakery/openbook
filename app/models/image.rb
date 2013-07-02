class Image
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  embedded_in :imageable, polymorphic: true
  mount_uploader :image, ImageUploader
end
