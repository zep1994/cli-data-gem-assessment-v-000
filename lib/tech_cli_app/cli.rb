class TechCliApp::CLI

  def call
    puts "The Most Recent Tech News is:"
    list_tech_news
  end

  def list_tech_news
      puts <<-DOC
      1. VR!
      2. AR!
        DOC
  end

end
