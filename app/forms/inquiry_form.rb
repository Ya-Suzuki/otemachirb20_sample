class InquiryForm < ActiveType::Object
  attribute :name, :string
  attribute :subject, :string
  attribute :content, :string

  validates :name, :subject, :content, presence: true
end
