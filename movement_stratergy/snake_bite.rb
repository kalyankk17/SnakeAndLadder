require_relative 'base'

class SnakeBite < Base
  def move(player, roll, current_cell)
    new_position = current_cell.tail
    player.update_position(new_position)
  end
end