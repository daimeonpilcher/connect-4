class DetectFour

  def initialize(board)
    @board = board

  end

  def in_a_row?
    [:bar, :dash, :slash, :backslash].each do |axis|
      reset
      count_on axis
      return true if connect_four?
    end
    false
  end

  private
  def reset
    @connected = 1
  end

  def count_on(axis)
    send axis
  end

  def connect_four?
    @connected >= 4
  end
end
