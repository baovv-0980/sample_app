# frozen_string_literal: true

# My commend
class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options(_option = {})
    { locale: I18n.locale }
  end
end
