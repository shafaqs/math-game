class Turn
  attr_reader :current_player, :question, :answer

  def initialize(player, question, ui)
    @current_player = player
    @question = question
    @answer = nil
    @ui = ui
  end

  def take_turn
    answer = @ui.prompt_player(@current_player.number, @question.to_s)
    if answer == @question.answer
      puts "Correct!"
    else
      puts "Incorrect!"
      @current_player.lose_life
    end
  end
end
