class TechCliApp::CLI

#start method which grabs from list is displayed here
  def call
      start
    end


  #list months with each.with_index(1) for first index
  def list
    puts "Events for Tech:"
    TechCliApp::Tech.all.each.with_index(1) do |event, i
      puts "#{i}. #{event.title}"
    end
  end

  def make_tech
      scrape_restaurants_index.each do |new|
        WorldsBestRestaurants::Restaurant.scrape_tech(new)
  end

  def print_tech(event)
    puts ""
    puts "-------------- #{event.name} --------------"

    puts ""
    puts event.summary
    puts ""

    puts "Starring: #{event.stars}"
    puts ""
  end


  def start
      list
      input = nil
      while input != "exit"
        puts ""
        puts "What Tech Conference would you more information on, type in the number?"
        puts ""
        puts "Enter list to see the list again."
        puts "Enter exit to quit the application."
        puts ""
        input = gets.strip
        if input == "list"
          list
        elsif input.to_i == 0
          if movie = NowPlaying::Movie.find_by_name(input)
            print_movie(movie)
          end
        elsif input.to_i > 0
          if movie = NowPlaying::Movie.find(input.to_i)
            print_movie(movie)
          end
        end
      end
      puts "Goodbye!!!"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the month for list of conferences, type list to relist months or type exit to quit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_event = @events[input.to_i-1]
        puts "#{the_event.title} - #{the_event.date} - #{the_event.location}"
      elsif input == "list"
        list
      else
    puts "not sure"
        end
      end
    end

def goodbye
  puts "Goodbye!"
end
end
