class TechCliApp::News
  attr_accessor :story, :summary, :time

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
    story = doc.search("h4 a.read-more").text
    binding.pry
  end

end
