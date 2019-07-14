# frozen_string_literal: true

class InputHandler
  attr_reader :game_window

  def initialize(game_window)
    @game_window = game_window
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

  private

  def close
    game_window.close
  end
end
