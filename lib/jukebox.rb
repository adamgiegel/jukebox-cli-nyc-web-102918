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
  puts "- list : lets you choose a song to play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end	 

def list(array)
  count = 1
  array.each do |song|
    "#{count}. #{song}"
    count += 1
  end

def play(array)
  puts "Please enter a song name or number"
  input = gets.chomp
  new_str = list(songs).join(" ")
  if new_str.include?(input)
    puts "Playing " + input
  else
    puts "Invalid input, please try again"
  end
end
end