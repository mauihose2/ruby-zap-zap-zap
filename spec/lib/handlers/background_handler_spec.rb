# frozen_string_literal: true

require 'spec_helper'

RSpec.describe BackgroundHandler do
  let(:background_handler) { BackgroundHandler.new }

  describe '.new' do
    it 'creates an instance' do
      expect(background_handler).to be_an_instance_of BackgroundHandler
    end
  end

  describe '.draw' do
    it 'responds to draw' do
      expect_any_instance_of(BackgroundHandler).to receive(:draw)
      background_handler.draw
    end
  end
end
