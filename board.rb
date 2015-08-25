class Board
  attr_accessor :grid, :last_color, :last_x, :last_y

  # Create initializers for the board.

  # Board has multiple columns and multiple rows.  Default is 6 x 11
  def initialize (width=7)
      @grid = Array.new(width) {[]}

  end
  # How to drop the pieces into the board from the top
  def drop(color, column)
    #append color to column
    @grid[column] << color
    @last_x = column
    @lasy_y = @grid[column].length - 1
    @last_color = color
  end
  #get color coordinates
  def color_of(x, y)
    @grid[x][y]
  end
  #Check if winner?
  def winner?
    four = DetectFour.new(self)
    four.in_a_row?
  end
end
