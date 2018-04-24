class TechCliApp::Tech
  #Class Instance Variable
  attr_accessor :month, :date, :lacation, :host, :url

  @@all = []

#initialize
def initialize
    @@all == self
end

  def self.all?
    @@all
  end

  def save
      @@all << self
  end

  def self.scrape_tech
    doc = Nokogiri::HTML(open("https://www.techrepublic.com/article/2018-tech-conferences-and-events-to-add-to-your-calendar/"))
    months = doc.search("h2").text
  end
end
