class Star
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, 'media/star.png')
    @x = 50 + (rand(@game_window.width) - 50)
    @y = 50 + (rand(@game_window.height) - 50)
  end

  def update
  end
  
  def x
    @x
  end
  
  def y
    @y
  end

  def draw
    @icon.draw(@x,@y,0)
  end
end
