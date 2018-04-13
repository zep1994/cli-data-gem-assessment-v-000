class TechCliApp::CLI

  def call
    list_tech_news
    menu
    goodbye
  end

  def list_tech_news
    puts "Today's Tech News!"
    @news = TechCliApp::News.today
  end

  def menu
    puts "Enter the number of the article you would like to read, type list to relist news or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @news[input.to_i-1]
      elsif input == "list"
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
