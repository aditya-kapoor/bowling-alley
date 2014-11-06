class Frame
  attr_accessor :ball1, :ball2, :number

  def initialize(ball1, ball2, number)
    self.ball1  = ball1.to_i if ball1
    self.ball2  = ball2.to_i if ball2
    self.number = number
  end

  def strike?
    ball1.eql?(10)
  end

  def spare?
    (ball1 + ball2).eql?(10)
  end

  def score
    ball1 + ball2.to_i
  end

  def last?
    number.eql?(Game::MAX_FRAMES_IN_A_GAME)
  end
end