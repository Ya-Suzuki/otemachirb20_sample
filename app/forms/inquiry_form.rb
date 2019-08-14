class InquiryForm < ActiveType::Object
  attribute :name, :string
  attribute :subject, :string
  attribute :content, :string

  validates :name, :subject, :content, presence: true

  def save
    return false if invalid?

    # メール送信の処理とか
    true
  end
end
