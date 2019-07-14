# frozen_string_literal: true

class BackgroundHandler
  def initialize
    @background_image = Gosu::Image.new('lib/images/background.png', tileable: false)
    @scroll_y = 0
  end

  def draw
    @background_image.draw(0, @scroll_y, 0)
    @background_image.draw(0, @scroll_y - @background_image.height, 0)
  end

  def scroll
    @scroll_y += 1

    if @scroll_y > @background_image.height
      @scroll_y = 0
    end
  end
end
