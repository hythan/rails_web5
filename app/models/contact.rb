class Contact < ApplicationRecord
  has_many :phones, dependent: :restrict_with_error
  mount_uploader :avatar, AvatarUploader
  accepts_nested_attributes_for :phones

end
