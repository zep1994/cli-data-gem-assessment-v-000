class TechCliApp::CLI

#start method which grabs from list is displayed here
  def call
      start
    end


  #list months with each.with_index(1) for first index
  def list
    puts "Events for Tech:"
    TechCliApp::Tech.all.each.with_index(1) do |event, i|
      puts "#{i}. #{event.title}"
    end
  end


  def print_tech(event)
    puts ""
    puts "-------------- #{event.title} --------------"

    puts ""
    puts event.summary
    puts ""

    puts "Events: #{event.title}"
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
          if movie = TechCliApp::Tech.find_by_name(input)
            print_tech(event)
          end
        elsif input.to_i > 0
          if movie = TechCliApp::Tech.find(input.to_i)
            print_tech(event)
          end
        end
      end
      puts "Goodbye!!!"
    end
  end

