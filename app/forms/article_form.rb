class ArticleForm < ActiveType::Record[Article]
  validates :title, :content, presence: true
end
