class UserForm < ActiveType::Record[User]
  change_association :profile, class_name: 'ProfileForm'
  accepts_nested_attributes_for :profile
  change_association :address, class_name: 'AddressForm'
  accepts_nested_attributes_for :address
  change_association :active, class_name: 'ActiveForm'
  accepts_nested_attributes_for :active, allow_destroy: true
  change_association :withdrawal, class_name: 'WithdrawalForm'
  accepts_nested_attributes_for :withdrawal, allow_destroy: true

  validates :email, presence: true
end
