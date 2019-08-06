module InquiryForm
  class Base < ActiveType::Object
    attribute :name, :string
    attribute :subject, :string
    attribute :content, :string

    validates :name, presence: true
    validates :subject, presence: true
    validates :content, presence: true
  end
end
