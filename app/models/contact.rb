class Contact < ApplicationRecord
  has_many :phones, dependent: :restrict_with_error
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
  accepts_nested_attributes_for :phones

end
