class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates_presence_of :title
end
