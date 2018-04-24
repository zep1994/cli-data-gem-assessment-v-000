class TechCliApp::News
  #Class Instance Variable
  attr_accessor :month, :date, :name, :location, :url

  @@all = []

#initialize
def initialize
    @@all == self
end

#Class method, class getter
def self.all
    @@all
end

  def save
      @@all << self
  end

  def self.scrape_reuters
    doc = Nokogiri::HTML(open("https://www.techrepublic.com/article/2018-tech-conferences-and-events-to-add-to-your-calendar/"))
    month = doc.search("h2").text
  end
end
