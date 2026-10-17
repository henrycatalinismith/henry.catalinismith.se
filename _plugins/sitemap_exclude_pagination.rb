module Jekyll
  class SitemapExcludePagination < Generator
    priority :lowest

    def generate(site)
      site.pages.each do |page|
        page.data["sitemap"] = false if page.pager && page.pager.page > 1
      end
    end
  end
end
