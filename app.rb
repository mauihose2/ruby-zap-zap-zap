# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), 'lib', '**.rb')].each { |file| require file }

Game.new.start
