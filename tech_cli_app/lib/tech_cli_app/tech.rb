class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :title, :date, :location, :summary, :url

@@all = []

  def self.all
      @@all << tech
  end


  def self.scrape_tech
    doc = Nokogiri::HTML(open("http://www.alltechconferences.com/"))
    doc.css('div.post.event').each do |div|
      tech = self.new
      tech.title = div.search("span.title a").text.strip
      tech.date = div.search("span.date").text.gsub("\r", "").gsub("\t", "").gsub("\n", "")
      tech.location = div.search("span.title b").text.gsub("\r", "").gsub("\t", "").gsub("\n", "")
      tech.url = doc.search("a").first.attr("href").strip.gsub("\r", "").gsub("\t", "").gsub("\n", "")
      @@all << tech
    end
  end
end
