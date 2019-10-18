class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader # 追加
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments ,dependent: :destroy
  has_many :touring_routes ,dependent: :destroy
  
end
