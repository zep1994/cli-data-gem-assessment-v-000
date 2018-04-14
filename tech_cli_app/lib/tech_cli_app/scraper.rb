class TechCliApp::Scraper

  def self.scrape_content(url)
    @doc = Nokogiri::HTML(open(url))
    title = @doc.search("div.nv-text-cont").text.strip
  end

  def scrape_urls
    @doc = Nokogiri
  end
