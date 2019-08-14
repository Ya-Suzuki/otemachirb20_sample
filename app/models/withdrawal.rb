class Withdrawal < ApplicationRecord
  belongs_to :user, optional: true
end
