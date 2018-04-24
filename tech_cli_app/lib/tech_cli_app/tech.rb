class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :month, :date, :lacation, :host, :url

  @@all = []

#initialize
def initialize
    @@all == self
end

  def self.all
    @@all ||= scrape_tech
  end

  def save
      @@all << self
  end

  def self.scrape_tech
    doc = Nokogiri::HTML(open("https://www.techrepublic.com/article/microsofts-conference-schedule-for-2018-is-missing-a-few-key-events-is-this-a-new-plan/"))
    events = doc.search("h3").text
    months.collect{|mon| new(mon.text.strip, "http://imdb.com#{e.attr("href").split("?").first.strip}")}

    end
  end
end
