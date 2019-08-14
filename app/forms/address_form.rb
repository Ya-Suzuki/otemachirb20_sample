class AddressForm < ActiveType::Record[Address]
  validates :zipcode, :pref, :city, :street, presence: true
end
