class TouringRoute < ApplicationRecord
  validates :start_date, presence: true
  # validates :end_date, presence: true
  mount_uploader :picture, PictureUploader
  has_many :comments ,dependent: :destroy
  belongs_to :user
end
