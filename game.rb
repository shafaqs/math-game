class Game
  def initialize(ui)
    @players = [Player.new("Player 1", 1), Player.new("Player 2", 2)]

    @current_player = @players[0]
    @ui = ui
  end

  def start_game
    until game_over?
      question = Question.new
      turn = Turn.new(@current_player, question, @ui)
      turn.take_turn

      if @current_player.lives == 0
        switch_player
        break
      end

      switch_player
    end

    declare_winner
  end

  def game_over?
    @players.any? { |player| player.lives == 0 }
  end

  def declare_winner
    winner = @players.find { |player| player.lives > 0 }
    puts "Player #{winner.number} wins with a score of #{winner.lives}/3"
    puts "------GAME OVER------"
    puts "Good bye!"
  end

  private

  def switch_player
    @current_player = @players.find { |player| player != @current_player }
  end
end
