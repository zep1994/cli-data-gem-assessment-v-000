class TechCliApp::CLI

  def call
    list
    menu
    goodbye
  end

  def list
    puts "Today's Tech News!"
    @news = TechCliApp::News.all
    @news.each.with_index(1) do |news, i|
      puts "#{i}. #{news.title}"
    end
  end

  def menu
    puts "Enter the number of the article you would like to read, type list to relist news or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        the_news = @news[input.to_i]
          puts "#{news.summary}"
      elsif input == "list"
        list
      else
        puts "goodbye!"
      end
    end
  end

end
