module Damage_Control

  def damage
    @hit_points -= DAMAGE
  end
  
  def destroyed?
    @hit_points <= 0
  end
  
end