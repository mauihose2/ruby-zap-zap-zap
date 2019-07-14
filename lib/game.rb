# frozen_string_literal: true

class Game
  attr_reader :game_window

  def initialize
    @game_window = GameWindow.new
  end

  def start
    @game_window.show
  end
end
