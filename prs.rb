# 1. Player pick a choice
# 2. compare player choice and computer choice
# 3. display the game message
# 4. play again?


CHOICES = {"p" => "paper","r" => "rock", "s" => "scissors"}
puts "Welcome to play Paper,Rock,Scissors!"

def display_winning_message(winning_choice)
  case winning_choice
  when "p"
    puts "Paper wraps Rock"
  when "r"
    puts "Rock smashed Scissors"
  when "s"
    puts "Scissors cuts Paper"
  end
end

loop do 

begin
puts "Choice one (P/R/S):"
player_choice = gets.chomp.downcase
end until CHOICES.keys.include?(player_choice)

computer_choice = CHOICES.keys.sample

 if player_choice == "p" && computer_choice == "r" || 
    player_choice == "r" && computer_choice == "s" ||
    player_choice == "s" && computer_choice == "p"
    display_winning_message(player_choice)
    puts "You Won"
 else
    display_winning_message(computer_choice)
    puts "Computer Won!"
 end

 puts "Play again? (y/n)"
 break if gets.chomp.downcase != "y"

end

puts "See you next time!Bye"