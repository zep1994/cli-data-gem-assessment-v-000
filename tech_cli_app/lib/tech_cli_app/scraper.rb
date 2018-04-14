class TechCliApp::Scraper

  def self.scrape_content(url)
    @doc = Nokogiri::HTML(open(url))
    content = @doc.search("div#article-body p").text.strip
  end

  def scrape_urls
    @doc = Nokogiri::HTML(open('https://www.marketwatch.com/newsviewer'))

    hrefs = []
    @doc.search("ol.viewport h4 a").each do |a|
      hrefs << a.attr("href")
    end
    hrefs
  end

  def self.scrape_titles
    @doc = Nokogiri::HTML(open('https://www.marketwatch.com/newsviewer'))

    titles = []
      @doc.search("ol.viewport h4 a.readmore").each do |h4|
        titles << h4.text
      end
      titles
  end

end
