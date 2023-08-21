import './Player.rb'
import './Question.rb'
Class Game
include Player
include Question
  attr_accessor :player1, :player2, :current_player, :game_over
  def initialize
    @player1 = Player.new('Numero Uno', 3)
    @player2 = Player.new('Numero Dos', 3)
    @current_player = @player1
    @game_over = false
  end
  def start_game
    while !game_over
      question = Question.new
      puts '-----NEW TURN-----'
      question.generate_question
      player_answer = gets.chomp
      if (question.check_answer(player_answer))
        puts "YES! You are correct, #{@current_player}"
      elsif (!question.check_answer(player_answer))
        puts "Seriously? Go back to school, #{@current_player}"
        @current_player.lose_life
      end
      puts @player1.to_s + " " + @player2.to_s
      






# Game (player1, player2, current_player, game_over)