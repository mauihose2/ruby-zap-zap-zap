# frozen_string_literal: true

require 'byebug'
require 'gosu'

%w[
  handlers/background_handler
  handlers/input_handler
  sprites/player
].each { |file| require_relative file.to_s }

class GameWindow < Gosu::Window
  attr_reader :input_handler, :background_handler

  def initialize(width = 800, height = 600)
    super(width, height)
    self.caption = 'Zap Zap'

    @background_handler = BackgroundHandler.new
    @input_handler = InputHandler.new(self)
    @player = Player.new(self)
  end

  def update
    background_handler.scroll

    if button_down?(Gosu::KbLeft)
      @player.move_left
    end

    if button_down?(Gosu::KbRight)
      @player.move_right
    end

    if button_down?(Gosu::KbUp)
      @player.move_up
    end

    if button_down?(Gosu::KbDown)
      @player.move_down
    end
  end

  def draw
    background_handler.draw

    if button_down?(Gosu::KbLeft)
      @player.draw_bank_left
      @player.draw_exhaust_bank_left
    elsif button_down?(Gosu::KbRight)
      @player.draw_bank_right
      @player.draw_exhaust_bank_right
    elsif button_down?(Gosu::KbUp)
      @player.draw_default
      @player.draw_default_exhaust
    elsif button_down?(Gosu::KbDown)
      @player.draw_default
      @player.draw_exhaust_down
    else
      @player.draw_default
    end
  end

  def button_down(id)
    input_handler.button_down(id)
  end
end
