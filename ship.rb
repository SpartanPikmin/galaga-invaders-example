class Ship < Structure include Sprite_Setting Hitting_Control Damage_Control

  def post_initialize(args)
    @sprite = args.fetch[:sprite]
  end

  Sprite_Setting.draw
  
  

end
