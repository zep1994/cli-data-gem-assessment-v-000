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
    doc = Nokogiri::HTML(open("http://www.alltechconferences.com/"))
    events = doc.search(".content span[@class='title'] a").text
    end
  end

  def summary_finder
    @summary_finder ||= Nokogiri::HTML(open("#{self.url}summary_finder"))
  end


  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end
