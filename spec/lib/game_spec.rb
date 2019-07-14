# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe Game do
  describe '.new' do
    it 'has a game window' do
      expect(subject.game_window).to be_an_instance_of GameWindow
    end
  end

  describe '.start' do
    it 'shows the game window' do
      expect_any_instance_of(GameWindow).to receive(:show)
      subject.start
    end
  end
end
