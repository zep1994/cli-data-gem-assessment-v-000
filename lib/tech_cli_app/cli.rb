class TechCliApp::CLI

  def call
    list_tech_news
    menu
    goodbye
  end

  def list_tech_news
      puts <<-DOC
      puts "The Most Recent Tech News is:"
      1. VR!
      2. AR!
        DOC
  end

  def menu
    puts "Enter the number of the article you would like to read, type list to relist news or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
    case input
    when "1"
      puts "info 1"
    when "2"
      puts "info 2"
    when "list"
      list_tech_news
    else
      puts "Not sure what you want:/ type list or exit"
    end
  end
end

  def goodbye
    puts "See you Later!"
  end

end
