def start # Starts the game
  puts "\n\n**************************"
  puts "Welcome to the Math Game!"
  puts "**************************\n\n"
  puts "Each player starts with 3 lives."
  puts "If a question is answered incorrectly, you will lose a life!"
  puts "The first person to lose all their lives will lose the game."
  puts "Good luck, and let the game begin!"

  p1 = Player.new
  p2 = Player.new

  while p1.score > 0 && p2.score > 0 do
    gameplay(p1, p2, 1)
    gameplay(p1, p2, 2)
  end

  puts "\n----- GAME OVER -----"
  puts "\nThanks for playing. Good bye!"

end

# Gameplay logic
def gameplay(p1, p2, player_num)

  # Sets the player
  current_player = player_num == 1 ? p1 : p2

  # Checks if a player has lost
  if p1.score == 0
    puts "\nPlayer 2 wins with a score of #{current_player.score}/3!"
    return
  end

  if p2.score == 0
    puts "\nPlayer 1 wins with a score of #{current_player.score}/3!"
    return
  end

  # Instantiates a new question
  math_question = Question.new

  # Asks the player a question
  puts "\n\n----- NEW TURN -----"
  puts "\nPlayer #{player_num}'s turn!"
  math_question.question

  # Takes the player's answer
  answer = gets.chomp.to_i

  # Check if the player's answer is correct
  if math_question.answer(answer)
    puts "\nPlayer #{player_num}: CORRECT! Next question."
  else
    puts "\nPlayer #{player_num}: Seriously? NO! Next question."
    current_player.score -= 1
  end

  # Prints player scores
  puts "\nP1: #{p1.score}/3 VS P2: #{p2.score}/3"

end