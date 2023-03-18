class UI
  def prompt_player(player_num, question_text)
    puts "Player #{player_num}: #{question_text}"
    gets.chomp.to_i
  end

  def display_scoreboard(p1_lives, p2_lives)
    puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
  end
end
