class TechCliApp::Tech
  
   def summary
  @summary ||= doc.search("div.entry-content p").text.strip
  end

   def self.scrape_tech
    event = Nokogiri::HTML(open("http://www.alltechconferences.com/"))
    titles = event.css('div.post.event span.title a')
    titles.collect{|name| new(name.text.strip, name.attr("href").split("?").first.strip)}
    end

  def doc
    @event ||= Nokogiri::HTML(open(self.url))
  end
end