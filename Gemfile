source "https://rubygems.org"

# Rails本体
gem "rails", "~> 8.1.0"

# アセット管理
gem "propshaft"

# データベース
gem "sqlite3", ">= 2.1", group: [:development, :test]   # 開発/テスト用
gem "pg"                                                # production / 確認用

# Webサーバー
gem "puma", ">= 5.0"

# JSON API ビルダー
gem "jbuilder"

# Active Model has_secure_password（必要なら）
# gem "bcrypt", "~> 3.1.7"

# Windowsのタイムゾーン情報
gem "tzinfo-data", platforms: %i[windows jruby]

# Rails.cache, Active Job, Action Cable 用
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# 起動高速化用
gem "bootsnap", require: false

# Docker デプロイ用
gem "kamal", require: false

# Puma での HTTP キャッシュ/圧縮用
gem "thruster", require: false

group :development, :test do
  # デバッグ用
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"

  # セキュリティ静的解析
  gem "brakeman", require: false

  # コード整形
  gem "rubocop-rails-omakase", require: false

  # 開発用コンソール
  gem "web-console"
end
