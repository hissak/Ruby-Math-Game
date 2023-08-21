import './Player.rb'
import './Question.rb'
Class Game
include Player
include Question
  attr_accessor :player1, :player2, :current_player, :game_over :winner :lives
  def initialize(lives)
    @lives = lives
    @player1 = Player.new('Numero Uno', lives)
    @player2 = Player.new('Numero Dos', lives)
    @current_player = @player1
    @game_over = false
  end
  def start_game
    while !game_over
      puts '-----NEW QUESTION-----'
      question = Question.new
      puts '-----NEW TURN-----'
      question.generate_question
      player_answer = gets.chomp
      if (question.check_answer?(player_answer))
        puts "YES! You are correct, #{@current_player}"
      elsif (!question.check_answer?(player_answer))
        puts "Seriously? Go back to school, #{@current_player}"
        @current_player.lose_life
      end
      puts @player1.to_s + " " + @player2.to_s
      if (@current_player.is_dead?)
        if (@current_player == @player1)
          @winner = @player2
        else
          @winner = @player1
        end
        puts "----GAME OVER----"
        @game_over = true
        puts "#{@winner} wins with a score of #{@winner.lives_remaining}/#{lives}"
      end
    end
  end
end






# Game (player1, player2, current_player, game_over)