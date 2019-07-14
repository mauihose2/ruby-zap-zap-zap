# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe GameWindow do
  let(:width) { 800 }
  let(:height) { 600 }
  let(:keys) { { escape: Gosu::KbEscape } }
  let(:game_window) { GameWindow.new }

  describe '.new' do
    it 'returns a game object' do
      expect(game_window).to be_an_instance_of GameWindow
    end

    it 'sets a width' do
      expect(game_window.width).to eq width
    end

    it 'sets a height' do
      expect(game_window.height).to eq height
    end
  end

  describe '.update' do
  end

  describe '.draw' do
  end

  describe '.button_down' do
    it 'delegates the game window close to the input_handler' do
      expect_any_instance_of(InputHandler).to receive(:close)
      game_window.button_down(keys[:escape])
    end
  end

  describe '.caption' do
    it 'returns a caption of Zap Zap' do
      expect(subject.caption).to eq 'Zap Zap'
    end
  end
end
