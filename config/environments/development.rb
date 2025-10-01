require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # コード変更を即時反映
  config.enable_reloading = true

  # 起動時にコードを eager load しない
  config.eager_load = false

  # フルエラーレポートを表示
  config.consider_all_requests_local = true

  # サーバータイミングを有効化
  config.server_timing = true

  # Action Controller キャッシュの設定
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.public_file_server.headers = { "cache-control" => "public, max-age=#{2.days.to_i}" }
  else
    config.action_controller.perform_caching = false
  end

  # キャッシュストア
  config.cache_store = :memory_store

  # メーラーのエラーは無視
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  # メーラーで生成されるリンクのホスト
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  # 非推奨警告をログに出力
  config.active_support.deprecation = :log

  # マイグレーション未実行時にページロードでエラー
  config.active_record.migration_error = :page_load

  # SQLクエリを発行したコードをハイライト
  config.active_record.verbose_query_logs = true

  # SQLに実行時情報をコメントとして追加
  config.active_record.query_log_tags_enabled = true

  # バックグラウンドジョブのログを詳細化
  config.active_job.verbose_enqueue_logs = true

  # 翻訳が欠けている場合にエラーを出す（必要に応じて）
  # config.i18n.raise_on_missing_translations = true

  # レンダリングされたビューにファイル名を注釈
  config.action_view.annotate_rendered_view_with_filenames = true

  # before_action の only/except が存在しないアクションを参照した場合にエラー
  config.action_controller.raise_on_missing_callback_actions = true

  # Cloud9のプレビュー用ホストを許可
  config.hosts << "df6dcd7ae6384e5ca02cefc04c59d8a5.vfs.cloud9.us-east-1.amazonaws.com"
end
