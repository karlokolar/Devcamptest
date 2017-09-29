module DefaultPageContent
  extend ActiveSupport::Concern

  included do
      before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Evil Genius | Portfolio site'
    @seo_keywords = 'Evil Genius Portfolio'
  end
end
