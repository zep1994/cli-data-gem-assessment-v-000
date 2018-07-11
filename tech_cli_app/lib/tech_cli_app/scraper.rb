class TechCliApp::Scraper
  
   def self.summary(tech)
  tech.summary ||= self.doc(tech).search("div.entry-content p").text.strip
  end

   def self.scrape_tech
    event = Nokogiri::HTML(open("http://www.alltechconferences.com/"))
    titles = event.css('div.post.event span.title a')
    titles.collect{|name| TechCliApp::Tech.new(name.text.strip, name.attr("href").split("?").first.strip)}
    end

  def self.doc(tech)
    @event ||= Nokogiri::HTML(open(tech.url))
  end
end