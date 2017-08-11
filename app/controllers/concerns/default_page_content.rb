module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Udemy | My Rails exercises"
    @seo_keywords = "Michal Niedziela exercise"
  end
end