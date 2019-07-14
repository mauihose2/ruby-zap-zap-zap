class Player
  ACCELERATION = 4
  FRICTION = 0.9

  attr_reader :x, :y, :radius, :game_window

  def initialize(game_window)
    @radius = 32
    @angle = 0

    @game_window = game_window

    @x = game_window.width / 2
    @y = game_window.height - @radius
    @z = 1

    @images = {
      default: Gosu::Image.new('lib/images/player_r_m.png'),
      bank_left: Gosu::Image.new('lib/images/player_r_l1.png'),
      bank_right: Gosu::Image.new('lib/images/player_r_r1.png'),
      default_exhaust: Gosu::Image.new('lib/images/exhaust_01.png'),
      exhaust_bank_left: Gosu::Image.new('lib/images/exhaust_04.png'),
      exhaust_bank_right: Gosu::Image.new('lib/images/exhaust_05.png'),
      exhaust_down: Gosu::Image.new('lib/images/exhaust_02.png')
    }
  end

  def draw_default
    @images[:default].draw_rot(@x, @y, @z, @angle)
  end

  def draw_bank_left
    @images[:bank_left].draw_rot(@x, @y, @z, @angle)
  end

  def draw_bank_right
    @images[:bank_right].draw_rot(@x, @y, @z, @angle)
  end

  def draw_default_exhaust
    @images[:default_exhaust].draw_rot(@x, @y + @radius, @z, @angle)
  end

  def draw_exhaust_bank_left
    @images[:exhaust_bank_left].draw_rot(@x, @y + @radius, @z, @angle)
  end

  def draw_exhaust_bank_right
    @images[:exhaust_bank_right].draw_rot(@x, @y + @radius, @z, @angle)
  end

  def draw_exhaust_down
    @images[:exhaust_down].draw_rot(@x, @y + @radius, @z, @angle)
  end

  def move_up
    return @y if @y < @radius

    @y -= ACCELERATION
  end

  def move_down
    return @y if @y > game_window.height - @radius

    @y += ACCELERATION
  end

  def move_left
    return @x if @x < @radius

    @x -= ACCELERATION
  end

  def move_right
    return @x if @x > game_window.width - @radius

    @x += ACCELERATION
  end
end
