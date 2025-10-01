class Book < ApplicationRecord
  # 必須項目のバリデーション
  validates :title, :author, :published_on, presence: true

  # 表示用タイトル
  def display_title
    "#{title} / #{author} (#{published_on.strftime('%Y')})"
  end

  # 本の公開年を取得
  def published_year
    published_on.year
  end
end
