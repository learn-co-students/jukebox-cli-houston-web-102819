# Add your code here
  def list(songs)
    index = 0
    while index < songs.length
    puts "#{index +1}. #{songs[index]}"
    index += 1

    end
    
  end
  def exit_jukebox
    puts "Goodbye"
  end

def play(songs)
    puts "Please enter a song name or number:"
    command = gets.strip
    songs.each_with_index do | song, index |
       
        if command == (index +1).to_s 
            return puts "Playing #{song}"
        elsif song == command
            return puts "Playing #{song}"
        end
    end
    puts "Invalid input, please try again"
end
def help 
    puts "- I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end


 def run(songs)
    puts "Please enter a command:"
    command = gets.strip
    while command != "exit"
    if command == "help"
         help
    elsif command == "list"
        list(songs)
        
    elsif command == "play"
        play(songs)



    end
    command = gets.strip
end
exit_jukebox
end



  