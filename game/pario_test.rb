class Pario_test < Gosu::Window
  def initialize(window_width, window_height)
    super(window_width,window_height,0)
    @background_image = background_image "media/pario_background.png"
    @player = Player.new(self)
    @stars = 5.times.map {Star.new(self)}
    @font = Gosu::Font.new(self, Gosu::default_font_name, 30)
    @score = 0
  end

  def update
    @player.move_left if key_pressed? :left
    @player.move_right if key_pressed? :right
    @player.move_up if key_pressed? :up
    @player.move_down if key_pressed? :down
    
    if @player.hit_by?(@stars)
      @score = @score + 10
    end
  end

  def draw
    @player.draw
    @background_image.draw 0,0,0
    @font.draw "Score: #{@score}",0,0,0
    @stars.each {|star| star.draw}
  end
end
