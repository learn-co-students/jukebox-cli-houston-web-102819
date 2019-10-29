# Add your code here
  def list(songs)
    index = 0
    while index < songs.length
    puts "#{index +1}. #{songs[index]}"
    index += 1

    end
    
  end

def play(songs)
    puts "Please enter a song name or number:"
    command = gets.strip
    songs.each_with_index do | song, index |
       
        if command == (index +1).to_s 
            return puts song
        elsif song == command
            return puts song
        end
    end
    puts "Invalid input, please try again"
end


 def run(songs)
    p "Please enter command:"
    command = gets.strip
    while command != "exit"
    if command == "help"
         p "I accept the following commands:"
         p "- help : displays this help message"
         p "- list : displays a list of songs you can play"
          p "- play : lets you choose a song to play"
          p "- exit : exits this program"
    elsif command == "list"
        list(songs)
        
    elsif command == "play"
        play(songs)



    end
   
end

end



  