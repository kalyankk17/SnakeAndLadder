require_relative 'base'

class LadderClimb < Base
  def move(player, roll, current_cell)
    new_position = current_cell.head
    player.update_position(new_position)
  end
end