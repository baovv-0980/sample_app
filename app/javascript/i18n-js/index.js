import I18n from "i18n-js"
I18n.translations = <%= I18n::JS.filtered_translations.to_json %>;
export default I18n
