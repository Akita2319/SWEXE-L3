module ApplicationHelper
  # 日付を見やすく表示
  def formatted_date(date)
    date.strftime("%Y/%m/%d") if date.present?
  end

  # ナビゲーションリンク用のヘルパー
  def nav_link_to(name, path)
    link_to name, path, class: "nav-link"
  end
end
