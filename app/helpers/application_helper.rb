module ApplicationHelper

  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Teste"
    end
  end

  def locale(locale)
    I18n.locale = locale
  end


end
