require_relative 'frame'

class Game
  MAX_FRAMES_IN_A_GAME = 10
  attr_accessor :frames, :score

  def initialize(frames=[])
    self.score  = 0
    self.frames = frames
  end

  def enter_frames
    File.open('input.txt').read.split("\n").each_with_index do |frame_line, index|
      frame_score = frame_line.split(" ")
      frames.push(Frame.new(frame_score[0], frame_score[1], index))
    end
    # to ensure chaining.
    self
  end

  def calculate_frame_scores
    frames.each do |frame|
      # Last frame will be to accomodate the strike or spare in the 10th frame.
      unless frame.last?
        self.score += frame.score + (if frame.strike?
          next_two_balls_score(frame.number)
        elsif frame.spare?
          next_frame(frame.number).ball1
        end.to_i)
        puts "Score After Frame #{ frame.number + 1 }: #{ score }"
      end
    end
  end

  private
    def next_frame(current_frame_number)
      frames[current_frame_number + 1]
    end

    def next_two_balls_score(current_frame_number)
      next_frame = next_frame(current_frame_number)
      if next_frame.strike?
        next_frame.score + next_frame(current_frame_number + 1).ball1
      else
        next_frame.score
      end
    end
end

Game.new.enter_frames.calculate_frame_scores