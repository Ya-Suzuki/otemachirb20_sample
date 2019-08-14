class Active < ApplicationRecord
  belongs_to :user, optional: true
end
