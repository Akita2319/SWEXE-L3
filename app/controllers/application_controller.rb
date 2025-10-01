class ApplicationController < ActionController::Base
  # モダンブラウザのみ許可
  allow_browser versions: :modern

  # 共通before_action: 現在時刻をセット
  before_action :set_current_time

  private

  def set_current_time
    @current_time = Time.current
    logger.debug "Current time set to #{@current_time}"
  end
end
