class MissileCollection

  attr_reader :missiles

  def initialize
    @missiles = []
  end

  def add(missile)
    missiles << missile
  end

  def update
    missiles.each(&:move)
  end

  def draw
    missiles.each(&:draw)
  end

  def add_from(ship_or_alien)
    #needs duck typing so I changed alien to also have a muzzle_location method.
    #Also added a velocity method to both classes.
    #name prabaly needs to change but it should work.
    
    missile = Missile.new(ship_or_alien.muzzle_location)
    missile.launch(ship_or_alien.velocity)
    add(missile)
  end

end