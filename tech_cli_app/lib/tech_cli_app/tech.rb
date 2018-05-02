class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :title, :date, :location, :summary, :url

  def initialize(title = nil, url = nil)
    @title = title
    @url = url
end

  def self.all
    @@all ||= scrape_tech
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(title)
     self.all.detect do |conf|
       conf.title.downcase.strip == title.downcase.strip ||
       conf.title.split("(").first.strip.downcase == title.downcase.strip
     end
   end

  def date
  @date ||= tech.date = div.search("span.date").text.gsub("\r", "").gsub("\t", "").gsub("\n", "")
  end 

  def location
   tech.location = div.search("span.title b").text.gsub("\r", "").gsub("\t", "").gsub("\n", "")
  end

private
  def self.scrape_tech
    doc = Nokogiri::HTML(open("http://www.alltechconferences.com/"))
    doc.css('div.post.event').collect do |div|
      tech = self.new
      titles = div.search("span.title a").text.strip
      urls = doc.search("a").first.attr("href").strip.gsub("\r", "").gsub("\t", "").gsub("\n", "")
    end
  end
end
