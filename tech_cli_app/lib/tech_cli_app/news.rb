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
    doc = Nokogiri::HTML(open("https://www.reuters.com/news/archive/technologyNews"))
    story = doc.search("h3.story-title").text
    binding.pry
  end

end
