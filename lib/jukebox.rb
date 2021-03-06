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

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  while input != "exit"
    case input
      when "help"
        help
        puts "Please enter a command:"
        input = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        input = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        input = gets.chomp
      else
        puts "Invalid input, please try again"
        input = gets.chomp
    end
  end
  exit_jukebox
end