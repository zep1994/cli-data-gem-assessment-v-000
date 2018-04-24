class TechCliApp::CLI

  def call
    TechCliApp::Scraper.new.scrape_tech
    list
    menu
    goodbye
  end

  def months
    puts "Months with conferences:"
  month = TechCliApp::Tech.all
    @month.each.with_index(1) do |month, i|
      puts "#{i}. #{month}"
    end

  end

  def menu
    puts "Enter the number of the month for list of conferences, type list to relist months or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0
        the_news = @month[input.to_i]
          puts "#{month}"
        the_news = @month[input.to_i-1]
        puts "#{month}"
        puts @month[input.to_i-1]
      elsif input == "list"
        months
      else
        puts "goodbye!"
      end
    end
  end

end
