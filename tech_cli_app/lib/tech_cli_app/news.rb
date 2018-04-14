class TechCliApp::News
  #Class Instance Variable
  attr_accessor :title, :time, :summary, :url, :content
  @@all = []

  def self.all?
    @@all
  end

  def save
      @@all << self
  end
end
