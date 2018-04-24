class TechCliApp::CLI

#start method which grabs from list is displayed here
  def call
    list
    menu
    goodbye
  end

  #list months with each.with_index(1) for first index
  def list
    puts "Events for Tech:"
    @events = TechCliApp::Tech.today
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.title} - #{event.date} - #{event.location}"
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
