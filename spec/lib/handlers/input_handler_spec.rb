# frozen_string_literal: true

require 'spec_helper'

RSpec.describe InputHandler do
  let(:game_window) { GameWindow.new }
  let(:input_handler) { InputHandler.new(game_window) }

  describe '.new' do
    it 'creates an instance' do
      expect(input_handler).to be_an_instance_of InputHandler
    end

    it 'has a game_window variable' do
      expect(input_handler.instance_variable_get(:@game_window)).to eq input_handler.game_window
    end
  end

  describe '.button_down' do
    it 'responds to close' do
      expect_any_instance_of(InputHandler).to receive(:close)
      input_handler.button_down(Gosu::KbEscape)
    end
  end
end
