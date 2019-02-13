# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship

  WIDTH = 100
  HEIGHT = 200
  MOVE_5_UNITS = 5
  MISSILE_MOVE_10_UNITS

  def initialize(x, y)
    @x = x
    @y = y
    @missile_coordinates = struct.new()
  end

  def move_left
    @x -= MOVE_5_UNITS
  end

  def move_right
    @x += MOVE_5_UNITS
  end

  def fire_missile
    @missile_coordinates << [@x, coordinate_center]
  end
  
  def coordinate_center
    (@y - HEIGHT / 2)
  end

  def move_missiles
    @missile_coordinates.each do |missile|
      missile[1] -= MISSILE_MOVE_10_UNITS
    end
  end

  def draw
    # Ignore this
  end
  
  def draw_missiles
   @missile_coordinates.each do |missile|

   end
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers? 
    It makes it easier to modify and change the code in the future
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.) 
    Single responsibility, Open-closed, Liskov subsistition, Interface segeregation, Dependency inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later). 
    False
4. In Metz' TRUE acronym, what does the E stand for and what does it mean? 
    Exemplary: encurage change using these qualities
5. How does applying SRP naturally lead to good design? 
    it makes it more moduler and eaisier to change in the future.
=end
