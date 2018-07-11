 class TechCliApp::CLI

#start method which grabs from list is displayed here
  def call
      start
    end


  #list months with each.with_index(1) for first index
  def list
    puts "Events for Tech:"
    puts ""
    TechCliApp::Tech.all.each.with_index(1) do |tech, i|
      puts "#{i}. #{tech.title}"
    end
  end


  def print_tech(tech)
    puts ""
    puts "-------------- #{tech.title} --------------"
    puts ""
    puts "#{tech.summary}"
    puts ""
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
        #elsif input.to_i == 0
        #  if tech = TechCliApp::Tech.find_by_name(input)
         #   print_tech(tech)
         # end
        elsif input.to_i > 0 && input.to_i <= TechCliApp::Tech.all.length
       # binding.pry
          if tech = TechCliApp::Tech.find(input.to_i)
            print_tech(tech)
          end
        elsif
       # binding.pry
          puts "I do not understand that."
        end
      end
      puts ""
      puts ""
      puts "Goodbye!!!"
    end
  end
