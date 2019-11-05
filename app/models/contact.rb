class Contact < ApplicationRecord
  has_many :phones, dependent: :restrict_with_error
  accepts_nested_attributes_for :phones
end
