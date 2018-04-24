class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :title, :date, :location, :summary, :url

@@all = []

  def self.all
      @@all
  end
  
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
    doc.css('div.post.event').each do |div|
      tech = self.new
      tech.title = div.search("span.title a").text.strip
      tech.date = div.search("span.date").text
      tech.location = div.search("span.title b").text
      tech.url = doc.search("a").first.attr("href").strip
      @@all << tech
    end
    tech.date.gsub("\r", "").gsub("\t", "").gsub("\n", "")
  end
end
