class ProfileForm < ActiveType::Record[Profile]
  validates :name, :user_name, presence: true
end
