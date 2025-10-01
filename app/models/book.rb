class Book < ApplicationRecord
  # 必須項目のバリデーション
  validates :title, presence: true
  validates :author, presence: true
  validates :published_on, presence: true
end
