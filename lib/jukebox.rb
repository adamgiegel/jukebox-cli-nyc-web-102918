songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits the program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end 
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  string = list(songs).join(" ")
  if string.include?(input)
    puts "Playing " + input
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    if input == "list"
      puts list(songs)
    elsif input == "play"
      puts play(songs)
    elsif input == "help"
      help
    elsif input == "exit_jukebox"
      exit_jukebox



 def run(songs)
  help
  while true
    puts "Please enter a command:"
    command = gets.chomp
    case command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
    end
  end
end