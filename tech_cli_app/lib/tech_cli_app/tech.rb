class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :title, :date, :location, :summary, :url

  #save events in all
  def self.today
    self.scrape_news
  end

def self.scrape_news
  techs = []

  techs << self.scrape_tech

techs

end

  def self.scrape_tech
    doc = Nokogiri::HTML(open("http://www.alltechconferences.com/"))

    tech = self.new
    tech.title = doc.search("span.title a").text.strip
    tech.date = doc.search("div.post.event span.date").text.strip
    tech.location = doc.search("div.post.event span.title b").text
    tech.url = doc.search("a").first.attr("href").strip

  tech
  end
end
