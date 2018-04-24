class TechCliApp::CLI

#start method which grabs from list is displayed here
  def call
    start
  end

  #list months with each.with_index(1) for first index
  def list
    puts "Months with conferences:"
  month = TechCliApp::Tech.all
    @month.each.with_index(1) do |month, i|
      puts "#{i}. #{month}"
    end

  end

  #print tech conference info
def print_conf
  puts "This looks like a good one"
  puts "#{tech.month}"
  puts "#{tech.date}"
  puts "#{tech.location}"
  puts "#{tech.host}"
  puts ""
end

  def start
    #call list
    list
    input = nil
    while input != "exit"
      puts "Enter the number of the month for list of conferences, type list to relist months or type exit to quit:"
      input = gets.strip
      if input == "list"
        list
      elsif input.to_i > 0
        the_news = @month[input.to_i]
          puts "#{month}"
        the_news = @month[input.to_i-1]
        puts "#{month}"
        puts @month[input.to_i-1]
      else
        puts "goodbye!"
      end
    end
  end

end
