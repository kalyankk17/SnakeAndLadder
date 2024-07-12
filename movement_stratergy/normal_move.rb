require_relative 'base'

class NormalMove < Base
  def move(player, roll, current_cell)
    new_position = player.position + roll
    player.update_position(new_position)
  end
end