class TechCliApp::News
  #Class Instance Variable
  attr_accessor :name, :origin, :genres, :labels, :past_members, :url

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
