class TechCliApp::News
  #Class Instance Variable
  attr_accessor :title, :date, :summary, :url
  @@all = []

  def self.all?
    @@all
  end

  def save
      @@all << self
  end

  def self.scrape_reuters
    doc = Nokogiri::HTML(open("https://www.esquire.com/new-movie-releases/"))
    movie = doc.search(".item-title").text
  end
end
