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





# Game (player1, player2, current_player, game_over)