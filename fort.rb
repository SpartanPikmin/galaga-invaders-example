class Fort < Structure include Sprite_Setting Hitting_Control Damage_Control

  def post_initialize(args)
    @sprite = args.fetch[:sprite]
  end

  def draw
    # Draws the `sprite` at `location`
  end

end
