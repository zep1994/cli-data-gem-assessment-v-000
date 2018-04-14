class TechCliApp::News
  attr_accessor :title, :author, :summary, :href, :content

  def self.today
    self.scrape_news
  end

  def self.scrape_news
    news = []
    news << self.scrape_reuters
    news
  end

  def self.scrape_reuters
    doc = Nokogiri::HTML(open("https://www.marketwatch.com/newsviewer"))
    title = doc.search("h4 a.read-more").text
    binding.pry
  end

end
