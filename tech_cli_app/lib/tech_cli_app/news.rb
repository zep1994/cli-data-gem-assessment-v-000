class TechCliApp::News
  #Class Instance Variable
  attr_accessor :title, :time, :summary, :href, :content
  @@all = []

  def save
      @@all << self
  end
end
