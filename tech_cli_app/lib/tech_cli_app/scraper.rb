class TechCliApp::Scraper

  def self.scrape_content(url)
    @doc = Nokogiri::HTML(open(url))
    content = @doc.search("div#article-body p").text.strip
  end

  def scrape_urls
    @doc = Nokogiri::HTML(open('https://www.marketwatch.com/newsviewer'))

    href = []
  end
