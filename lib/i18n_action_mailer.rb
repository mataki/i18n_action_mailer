module I18nActionMailer

  def self.included(base)
    base.send :include, I18nActionMailer::InstanceMethods
    base.send :alias_method_chain, :render_message, :i18n
    base.helper_method :locale, :t, :translate, :l, :localize
  end

  module InstanceMethods
    def translate(key, options = {})
      super(key, options.merge(:locale => self.locale))
    end
    alias_method :t, :translate

    def localize(key, options = {})
      super(key, options.merge(:locale => self.locale))
    end
    alias_method :l, :localize

    def locale
      @locale
    end

    def set_locale(locale)
      @locale = locale
    end

    def render_message_with_i18n(method_name, body)
      method_name = "#{method_name}_#{locale}" if locale and !Dir["#{template_path}/#{method_name}_#{locale}*"].empty?
      render_message_without_i18n(method_name, body)
    end
  end

end

ActionMailer::Base.send(:include, I18nActionMailer)
