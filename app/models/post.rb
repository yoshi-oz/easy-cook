class Post < ApplicationRecord
  belongs_to :user

  validates :content, :name, :name, presence: true

  mount_uploader :image, ImageUploader
end
